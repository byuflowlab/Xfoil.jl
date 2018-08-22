"""
xfoilsweep_cs(x, y, aoa, re;<keyword arguments>)
Performs angle of attack sweep using   A number of options are available
to improve convergence and customize the run. Returns cl,cd,cdp,cm,converged
# Arguments
- `x::Array{<:Number,1}`: Airfoil coordinates start from trailing edge looping counterclockwise
- `y::Array{<:Number,1}`:
- `aoa::Array{<:Number,1}`: Array of angle of attacks in degrees
- `re::Number`: Reynolds number
- `ma::Number`: Mach number
- `iter::Integer=50`: Maximum number of iterations
- `npan::Integer=140`: Number of panels
- `percussive_maintenance::Bool=true`: Try harder to achieve convergence
- `printdata::Bool=false`: Print output
- `zeroinit::Bool=false`: Initialize solution from zero
- `clmaxstop::Bool=false`: Stop if lift coefficient decreases twice consecutively going up
- `clminstop::Bool=false`: Stop if lift coefficient increases twice consecutively going down
"""
function xfoilsweep_cs(x::AbstractArray{<:Number,1},
    y::AbstractArray{<:Number,1}, aoa::AbstractArray{<:Number,1},
    re::Number; mach::Number=0.0+0.0im, iter::Integer=50,
    npan::Integer=140, percussive_maintenance::Bool=true, printdata::Bool=false,
    zeroinit::Bool=true, clmaxstop::Bool=false, clminstop::Bool=false)

    if length(x) != length(y)
        error("x and y arrays must have the same length")
    end

    # initialize outputs
    naoa = length(aoa)
    cl = zeros(ComplexF64, naoa)
    cd = zeros(ComplexF64, naoa)
    cdp = zeros(ComplexF64, naoa)
    cm = zeros(ComplexF64, naoa)
    conv = zeros(Bool, naoa)

    # Set up angle of attack range going up and going down from zero if specified
    # This helps XFOIL to converge more consistently
    if zeroinit

        # negative angles of attack
        aoaneg = aoa[findall(real(aoa).<0.0)]
        aoanegidx = sortperm(real(aoaneg), rev = true)
        aoaneg = aoaneg[aoanegidx]
        pushfirst!(aoaneg, 0.0+0.0im)
        idxsplit = length(aoaneg)

        clneg, cdneg, cdpneg, cmneg, convneg = xfoilsweep_cs(x, y, aoaneg, re,
            mach, iter, npan, percussive_maintenance, printdata, false,
            clminstop)

        cl[1:idxsplit-1] = clneg[end:-1:2]
        cd[1:idxsplit-1] = cdneg[end:-1:2]
        cdp[1:idxsplit-1] = cdpneg[end:-1:2]
        cm[1:idxsplit-1] = cmneg[end:-1:2]
        conv[1:idxsplit-1] = convneg[end:-1:2]

        # positive angles of attack
        aoapos = aoa[findall(real(aoa).>=0.0)]
        aoaposidx = sortperm(real(aoapos))
        aoapos = aoapos[aoaposidx]
        pushfirst!(aoapos, 0.0+0.0im)
        npos = length(aoapos)

        clpos, cdpos, cdppos, cmpos, convpos = xfoilsweep_cs(x, y, aoapos, re,
            mach, iter, npan, percussive_maintenance, printdata, clmaxstop,
            false)

        cl[idxsplit:end] = clpos[2:end]
        cd[idxsplit:end] = cdpos[2:end]
        cdp[idxsplit:end] = cdppos[2:end]
        cm[idxsplit:end] = cmpos[2:end]
        conv[idxsplit:end] = convpos[2:end]
    else
        cl[:], cd[:], cdp[:], cm[:], conv[:] = xfoilsweep_cs(x, y, aoa, re,
            mach, iter, npan, percussive_maintenance, printdata, clminstop,
            clmaxstop)
    end

    return cl, cd, cdp, cm, conv
end

function xfoilsweep_cs(x::AbstractArray{<:Number,1}, y::AbstractArray{<:Number,1},
    aoa::AbstractArray{<:Number,1}, re::Number, mach::Number, iter::Integer,
    npan::Integer, percussive_maintenance::Bool, printdata::Bool,
    clmaxstop::Bool, clminstop::Bool)

    # Set up storage arrays
    naoa = length(aoa)
    cl = zeros(ComplexF64, naoa)
    cd = zeros(ComplexF64, naoa)
    cdp = zeros(ComplexF64, naoa)
    cm = zeros(ComplexF64, naoa)
    converged = zeros(Bool, naoa)

    # Header when printing data
    if printdata == true
        println("\nAngle\t\tCl\t\tCd\t\tCm\t\tConverged")
    end

    # start unconverged
    for i = 1:length(aoa)
        # restart XFOIL if unconverged
        if i == 1 || converged[i-1] == false
            setCoordinates_cs(x, y)
            pane_cs(npan=npan)
        end
        # run XFOIL
        cl[i], cd[i], cdp[i], cm[i], converged[i] = solveAlpha_cs(aoa[i], re,
            mach=mach, iter=iter)
        # check convergence, do percussive maintenance if desired/necessary
        if !converged[i] && percussive_maintenance
            cl[i], cd[i], cdp[i], cm[i], converged[i] =
                dopercussivemaintainance_cs(x, y, aoa[i], re, mach, iter, npan)
        end

        if printdata == true
            @printf("%8f\t%8f\t%8f\t%8f\t%d\n", real(aoa[i]), real(cl[i]),
                real(cd[i]), real(cm[i]), converged[i])
        end

        aoaconv = aoa[findall(converged)]
        clconv = cl[findall(converged)]
        if (real(aoa[i]) > 0.0) && (length(clconv) >= 4)
            if clmaxstop
                # break if maximum found
                if (real(clconv[end]) < real(clconv[end-1])) && (real(clconv[end-1]) < real(clconv[end-2]))
                    break
                end
            end
        end
        if (real(aoa[i]) < 0.0) && (length(clconv) >= 4)
            if clminstop
                # break if minimum found
                if (real(clconv[end]) > real(clconv[end-1])) && (real(clconv[end-1]) > real(clconv[end-2]))
                    break
                end
            end
        end
    end
    return cl, cd, cdp, cm, converged
end

"""
dopercussivemaintainance_cs(x, y, aoa, re, iter, npan)
Attempts to converge previously unconverged XFOIL solutions through modifying the
solution initial conditions. Returns cl, cd, cdp, cm, converged
"""
function dopercussivemaintainance_cs(x::AbstractArray{<:Number,1},
    y::AbstractArray{<:Number,1}, aoa::Number, re::Number, mach::Number,
    iter::Integer, npan::Integer)

    remod = re
    aoamod = aoa
    for j = 1:25
        remod = remod+1000.0
        aoamod = 0.95*aoamod
        setCoordinates_cs(x, y)
        pane_cs(npan=npan)
        cl, cd, cdp, cm, converged = solveAlpha_cs(aoamod, remod, mach=mach,
            iter=iter)
        if converged
            break
        end
    end
    # If converged, ease back to original problem
    if converged
        rediff = remod - re
        aoadiff = aoamod - aoa
        for j = 1:9
            remod = remod - rediff/10.0
            aoamod = aoamod - aoadiff/10.0
            cl, cd, cdp, cm, converged = solveAlpha_cs(aoamod, remod, mach=mach,
                iter=iter)
        end
        cl, cd, cdp, cm, converged = solveAlpha_cs(aoa, re, mach=mach, iter=iter)
    end
    return cl, cd, cdp, cm, converged
end
