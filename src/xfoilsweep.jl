"""
    xfoilsweep(x,y,aoa,re;<keyword arguments>)
Performs angle of attack sweep using Xfoil.  A number of options are available
to improve convergence and customize the run. Returns cl,cd,cdp,cm,converged
# Arguments
- `x::Array{Float64,1}`: Airfoil coordinates start from trailing edge looping counterclockwise
- `y::Array{Float64,1}`:
- `aoa::Array{Float64,1}`: Array of angle of attacks in radians
- `re::Float64`: Reynolds number
- `ma::Float64`: Mach number
- `iter::Integer=50`: Maximum number of iterations
- `npan::Integer=140`: Number of panels
- `percussive_maintenance::Bool=true`: Try harder to achieve convergence
- `printdata::Bool=false`: Print output
- `zeroinit::Bool=false`: Initialize solution from zero
- `clmaxstop::Bool=false`: Stop if lift coefficient decreases twice consecutively going up
- `clminstop::Bool=false`: Stop if lift coefficient increases twice consecutively going down
"""
function xfoilsweep(x::Array{Float64,1},y::Array{Float64,1},aoa::Array{Float64,1},
  re::Float64;mach::Float64=0.0,iter::Integer=50,
  npan::Integer=140,percussive_maintenance::Bool=true,printdata::Bool=false,
  zeroinit::Bool=true,clmaxstop::Bool=false,clminstop::Bool=false)

  if length(x) != length(y)
    error("x and y arrays must have the same length")
  end

  # Set up angle of attack range going up and going down from zero if specified
  # This helps XFOIL to converge more consistently
  if zeroinit
      aoapos = sort(aoa[find(aoa.>=0.0)])
      unshift!(aoapos,0.0)
      aoaneg = sort(aoa[find(aoa.<0.0)], rev = true)
      unshift!(aoaneg,0.0)
      clneg,cdneg,cdpneg,cmneg,convneg = xfoilsweep(x,y,aoaneg,re,mach,iter,npan,percussive_maintenance,printdata,false,clminstop)
      clpos,cdpos,cdppos,cmpos,convpos = xfoilsweep(x,y,aoapos,re,mach,iter,npan,percussive_maintenance,printdata,clmaxstop,false)
      aoa = vcat(aoaneg[end:-1:2],aoapos[2:end])
      cl = vcat(clneg[end:-1:2],clpos[2:end])
      cd = vcat(cdneg[end:-1:2],cdpos[2:end])
      cdp = vcat(cdpneg[end:-1:2],cdppos[2:end])
      cm = vcat(cmneg[end:-1:2],cmpos[2:end])
      conv = vcat(convneg[end:-1:2],convpos[2:end])
  else
      cl,cd,cdp,cm,conv = xfoilsweep(x,y,aoa,re,mach,iter,npan,percussive_maintenance,printdata,clminstop,clmaxstop)
  end

  return cl,cd,cdp,cm,conv
end

function xfoilsweep(x::Array{Float64,1},y::Array{Float64,1},aoa::Array{Float64,1},
  re::Float64,mach::Float64,iter::Integer,
  npan::Integer,percussive_maintenance::Bool,printdata::Bool,
  clmaxstop::Bool,clminstop::Bool)

  # Set up storage arrays
  naoa = length(aoa)
  cl = zeros(naoa)
  cd = zeros(naoa)
  cdp = zeros(naoa)
  cm = zeros(naoa)
  converged = zeros(Bool,naoa)

  # Header when printing data
  if printdata == true
    println("\nAngle\t\tCl\t\tCd\t\tCm\t\tConverged")
  end

  # start unconverged
  for i = 1:length(aoa)
    # restart XFOIL if unconverged
    if i == 1 || converged[i-1] == false
      Xfoil.setCoordinates(x,y)
      Xfoil.pane(npan=npan)
    end
    # run XFOIL
    cl[i],cd[i],cdp[i],cm[i],converged[i] = Xfoil.solveAlpha(aoa[i]*180/pi,re,mach=mach,iter=iter)
    # check convergence, do percussive maintenance if desired/necessary
    if !converged[i] && percussive_maintenance
      cl[i],cd[i],cdp[i],cm[i],converged[i] = dopercussivemaintainance(x,y,aoa[i],re,mach,iter,npan)
    end

    if printdata == true
      @printf("%8f\t%8f\t%8f\t%8f\t%d\n",aoa[i]*180/pi,cl[i],cd[i],cm[i],converged[i])
    end

    aoaconv = aoa[find(converged)]
    clconv = cl[find(converged)]
    if (aoa[i] > 0.0) && (length(clconv) >= 4)
      if clmaxstop
        # break if maximum found
        if (clconv[end] < clconv[end-1]) && (clconv[end-1] < clconv[end-2])
          break
        end
      end
    end
    if (aoa[i] < 0.0) && (length(clconv) >= 4)
      if clminstop
        # break if minimum found
        if (clconv[end] > clconv[end-1]) && (clconv[end-1] > clconv[end-2])
          break
        end
      end
    end
  end
  return cl,cd,cdp,cm,converged
end

"""
    dopercussivemaintainance(x,y,aoa,re,iter,npan)
Attempts to converge previously unconverged XFOIL solutions through modifying the
solution initial conditions. Returns cl,cd,cdp,cm,converged
"""
function dopercussivemaintainance(x::Array{Float64,1},y::Array{Float64,1},
  aoa::Float64,re::Float64,mach::Float64,iter::Integer,npan::Integer)
  remod = re
  aoamod = aoa
  for j = 1:25
    remod = remod+1000
    aoamod = 0.95*aoamod
    Xfoil.setCoordinates(x,y)
    Xfoil.pane(npan=npan)
    cl,cd,cdp,cm,converged = Xfoil.solveAlpha(aoamod*180/pi,remod,mach=mach,iter=iter)
    if converged
      break
    end
  end
  # If converged, ease back to original problem
  if converged
    rediff = (remod - re)
    aoadiff = (aoamod-aoa)
    for j = 1:9
      remod = remod - rediff/10.0
      aoamod = aoamod - aoadiff/10.0
      cl,cd,cdp,cm,converged = Xfoil.solveAlpha(aoamod*180/pi,remod,mach=mach,iter=iter)
    end
    cl,cd,cdp,cm,converged = Xfoil.solveAlpha(aoa*180/pi,re,mach=mach,iter=iter)
  end
  return cl,cd,cdp,cm,converged
end
