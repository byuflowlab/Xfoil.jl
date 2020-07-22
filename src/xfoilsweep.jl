"""
xfoilsweep(x,y,aoa,re;<keyword arguments>)
Performs angle of attack sweep using   A number of options are available
to improve convergence and customize the run. Returns cl,cd,cdp,cm,converged
# Arguments
- `x::AbstractArray{<:Real,1}`: Airfoil coordinates start from trailing edge looping counterclockwise
- `y::AbstractArray{<:Real,1}`:
- `aoa::AbstractArray{<:Real,1}`: Array of angle of attacks in degrees
- `re::Real`: Reynolds number
- `ma::Real`: Mach number
- `iter::Integer=50`: Maximum number of iterations
- `npan::Integer=140`: Number of panels
- `percussive_maintenance::Bool=true`: Try harder to achieve convergence
- `printdata::Bool=false`: Print output
- `zeroinit::Bool=false`: Initialize solution from zero
- `clmaxstop::Bool=false`: Stop if lift coefficient decreases twice consecutively going up
- `clminstop::Bool=false`: Stop if lift coefficient increases twice consecutively going down
"""
function xfoilsweep(x::AbstractArray{<:Real,1}, y::AbstractArray{<:Real,1},
    aoa::AbstractArray{<:Real,1},
    re::Real; mach::Real=0.0, iter::Integer=50,
    npan::Integer=140, percussive_maintenance::Bool=true, printdata::Bool=false,
    zeroinit::Bool=true, clmaxstop::Bool=false, clminstop::Bool=false, ncrit=9,
    xsep=nothing, sep_lecrit=1e-4)

    if length(x) != length(y)
        error("x and y arrays must have the same length")
    end

    # initialize outputs
    naoa = length(aoa)
    cl = zeros(Float64, naoa)
    cd = zeros(Float64, naoa)
    cdp = zeros(Float64, naoa)
    cm = zeros(Float64, naoa)
    _xsep = zeros(Float64, 2, naoa)
    conv = zeros(Bool, naoa)

    # Set up angle of attack range going up and going down from zero if specified
    # This helps XFOIL to converge more consistently
    if zeroinit

        # negative angles of attack
        aoaneg = sort(aoa[findall(aoa.<0.0)], rev = true)
        pushfirst!(aoaneg,0.0)
        idxsplit = length(aoaneg)
        xsepneg = zeros(Float64, 2, length(aoaneg))

        clneg, cdneg, cdpneg, cmneg, convneg = xfoilsweep(x, y, aoaneg, re,
            mach, iter, npan, percussive_maintenance, printdata, false,
            clminstop; ncrit=ncrit, xsep=xsepneg, sep_lecrit=sep_lecrit)

        cl[1:idxsplit-1] = clneg[end:-1:2]
        cd[1:idxsplit-1] = cdneg[end:-1:2]
        cdp[1:idxsplit-1] = cdpneg[end:-1:2]
        cm[1:idxsplit-1] = cmneg[end:-1:2]
        _xsep[:, 1:idxsplit-1] = xsepneg[:, end:-1:2]
        conv[1:idxsplit-1] = convneg[end:-1:2]

        # positive angles of attack
        aoapos = sort(aoa[findall(aoa.>=0.0)])
        pushfirst!(aoapos,0.0)
        xseppos = zeros(Float64, 2, length(aoapos))

        clpos, cdpos, cdppos, cmpos, convpos = xfoilsweep(x, y, aoapos, re,
            mach, iter, npan, percussive_maintenance, printdata, clmaxstop,
            false; ncrit=ncrit, xsep=xseppos, sep_lecrit=sep_lecrit)

        cl[idxsplit:end] = clpos[2:end]
        cd[idxsplit:end] = cdpos[2:end]
        cdp[idxsplit:end] = cdppos[2:end]
        cm[idxsplit:end] = cmpos[2:end]
        _xsep[:, idxsplit:end] = xseppos[:, 2:end]
        conv[idxsplit:end] = convpos[2:end]

        if xsep != nothing
            xsep[:] = _xsep
        end

    else
        cl[:], cd[:], cdp[:], cm[:], conv[:] = xfoilsweep(x, y, aoa, re, mach, iter,
            npan, percussive_maintenance, printdata, clminstop, clmaxstop;
            ncrit=ncrit, xsep=xsep, sep_lecrit=sep_lecrit)
    end

    return cl, cd, cdp, cm, conv
end

function xfoilsweep(x::AbstractArray{<:Real,1}, y::AbstractArray{<:Real,1},
    aoa::AbstractArray{<:Real,1}, re::Real, mach::Real, iter::Integer,
    npan::Integer, percussive_maintenance::Bool, printdata::Bool,
    clmaxstop::Bool, clminstop::Bool; ncrit=9,
    xsep::Union{AbstractArray{<:Real,2}, Nothing}=nothing, sep_lecrit=1e-4)

    # Set up storage arrays
    naoa = length(aoa)
    cl = zeros(Float64, naoa)
    cd = zeros(Float64, naoa)
    cdp = zeros(Float64, naoa)
    cm = zeros(Float64, naoa)
    converged = zeros(Bool, naoa)

    # Header when printing data
    if printdata == true
        println("\nAngle\t\tCl\t\tCd\t\tCm\t\tConverged")
    end

    # start unconverged
    for i in eachindex(aoa)
        # restart XFOIL if unconverged
        if i == 1 || converged[i-1] == false
            setCoordinates(x,y)
            pane(npan=npan)
        end
        # run XFOIL
        cl[i], cd[i], cdp[i], cm[i], converged[i] = solveAlpha(aoa[i], re, mach=mach, iter=iter, ncrit=ncrit)
        # check convergence, do percussive maintenance if desired/necessary
        if !converged[i] && percussive_maintenance
            cl[i], cd[i], cdp[i], cm[i], converged[i] =
                dopercussivemaintainance(x, y, aoa[i], re, mach, iter, npan, ncrit)
        end

        if printdata == true
            @printf("%8f\t%8f\t%8f\t%8f\t%d\n", aoa[i], cl[i], cd[i], cm[i],
                converged[i])
        end

        if xsep != nothing
            xsep[:, i] .= get_xsep(; lecrit=sep_lecrit)
        end

        aoaconv = aoa[findall(converged)]
        clconv = cl[findall(converged)]
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
    return cl, cd, cdp, cm, converged
end

"""
dopercussivemaintainance(x,y,aoa,re,iter,npan,ncrit)
Attempts to converge previously unconverged XFOIL solutions through modifying the
solution initial conditions. Returns cl,cd,cdp,cm,converged
"""
function dopercussivemaintainance(x::AbstractArray{<:Real,1},y::AbstractArray{<:Real,1},
    aoa::Real,re::Real,mach::Real,iter::Integer,npan::Integer,ncrit::Real)
    remod = re
    aoamod = aoa
    for j = 1:25
        remod = remod+1000
        aoamod = 0.95*aoamod
        setCoordinates(x,y)
        pane(npan=npan)
        cl,cd,cdp,cm,converged = solveAlpha(aoamod, remod, mach=mach, iter=iter, ncrit=ncrit)
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
            cl,cd,cdp,cm,converged = solveAlpha(aoamod,remod,mach=mach,iter=iter, ncrit=ncrit)
        end
        cl,cd,cdp,cm,converged = solveAlpha(aoa,re,mach=mach,iter=iter, ncrit=ncrit)
    end
    return cl, cd, cdp, cm, converged
end
