"""
    get_xsep()

Return x-position of the separation point closest to the trailing edge on the
upper and lower airfoil surfaces. This location is defined as the point where
the friction coefficient becomes negative.
"""
get_xsep

"""
    get_xsep_cs()

`get_xsep` for the complex step enabled version of XFOIL.
"""
get_xsep_cs

# definition of get_xsep
for (T, name, globals, bldump) in
    ((:Float64, :get_xsep, :xfoilglobals, :bldump),
    (:ComplexF64, :get_xsep_cs, :xfoilglobals_cs, :bldump_cs))

    @eval begin

        function $(name)(; xtol=1e-6)

            s, x, y, ue, dstar, theta, cf = $(bldump)()

            # Find indices of LE and TE edge
            xile = findfirst(x -> abs(x - $(globals).xle[1]) <= xtol, x)
            xite1 = findfirst(x -> abs(x - $(globals).xte[1]) <= xtol, x)
            xite2 = findnext(x -> abs(x - $(globals).xte[1]) <= xtol, x, xite1+1)

            # Get both faces going from TE to LE
            iup = xite1:(-1)^(xite1 > xile):xile
            ilo = xite2:(-1)^(xite2 > xile):xile

            # xup, yup = x[iup], y[iup]
            # xlo, ylo = x[ilo], y[ilo]

            # Find first separation point from the TE to LE on each side
            iupsep = findfirst( val -> val >= 0, cf[iup])
            ilosep = findfirst( val -> val >= 0, cf[ilo])

            iupsep == nothing ? iupsep = length(iup) : nothing
            ilosep == nothing ? ilosep = length(ilo) : nothing

            xsepup = x[iup[iupsep]]
            xseplo = x[ilo[ilosep]]

            return xsepup, xseplo
        end

    end

end

"""
    alpha_sweep(x, y, alpha; kwargs...)

Perform an inviscid analysis for a series of angles of attacks using XFOIL.  Return cl and 
cm.

# Arguments
 - `x`: Airfoil x-coordinate starting from trailing edge looping counter-clockwise
 - `y`: Airfoil y-coordinate starting from trailing edge looping counter-clockwise
 - `alpha`: Angle of attacks (in degrees)
 - `ma`: Mach number
 - `npan=140`: Number of panels
 - `printdata=false`: Print data obtained from XFOIL during the solution?
 - `zeroinit=true`: Start angle of attack sweeps from zero?  If `true`, results will be 
        sorted by ascending angle of attack.
"""
alpha_sweep(x, y, alpha; kwargs...)

"""
    alpha_sweep(x, y, alpha, re; kwargs...)

Perform angle of attack sweep using XFOIL.  Return cl, cd, cdp, cm, converged.

# Arguments
 - `x`: Airfoil x-coordinate starting from trailing edge looping counter-clockwise
 - `y`: Airfoil y-coordinate starting from trailing edge looping counter-clockwise
 - `alpha`: Angle of attacks (in degrees)
 - `re`: Reynolds number
 - `ma`: Mach number
 - `xtrip=(1.0,1.0)`: forced transition x/c locations on top/bottom sides
 - `reinit=false`: reinitialize the solution? (rather than use the previous solution)
 - `iter=50`: Maximum iterations for viscous analyses
 - `npan=140`: Number of panels
 - `percussive_maintenance=!reinit`: Call [`do_percussive_maintenance`](@ref) upon 
    convergence failure? 
 - `printdata=false`: Print data obtained from XFOIL during the solution?
 - `zeroinit=true`: Start angle of attack sweeps from zero?  If `true`, results will be 
        sorted by ascending angle of attack.
 - `clmaxstop=false`: Stop if lift coefficient decreases twice consecutively going up?
 - `clminstop=false`: Stop if lift coefficient increases twice consecutively going down?
"""
alpha_sweep(x, y, alpha, re; kwargs...)

"""
    alpha_sweep_cs(x, y, alpha, re; kwargs...)

`alpha_sweep` for the complex step enabled version of XFOIL.
"""
alpha_sweep_cs

# definition of alpha_sweep (inviscid analysis)
for (T, name, set_coordinates, pane, solve_alpha) in
    ((:Float64, :alpha_sweep, :set_coordinates, :pane, :solve_alpha),
    (:ComplexF64, :alpha_sweep_cs, :set_coordinates_cs, :pane_cs, :solve_alpha_cs))

    @eval begin

        function $(name)(x, y, alpha; mach=0.0, npan=140, printdata=false, zeroinit=true)

            @assert length(x) == length(y) "x and y arrays must have the same length"

            naoa = length(alpha)

            if zeroinit
                # Set up angle of attack range going up and going down from zero if specified
                # This helps XFOIL to converge more consistently

                # separate out negative angles of attack
                aoaneg = sort(alpha[findall(real.(alpha) .< 0.0)], by=real, rev = true)

                # add zero angle of attack to negative angles of attack
                pushfirst!(aoaneg, 0.0)

                # perform angle of attack sweep for negative angles of attack
                clneg, cmneg = $(name)(x, y, aoaneg, mach, npan, printdata)

                # separate out positive angles of attack
                aoapos = sort(alpha[findall(real.(alpha) .>= 0.0)], by=real)

                # add zero angle of attack to positive angles of attack
                pushfirst!(aoapos,0.0)

                # perform angle of attack sweep for positive angles of attack
                clpos, cmpos = $(name)(x, y, aoapos, mach, npan, printdata)

                # combine results from negative and positive runs (excluding zero angle of attack runs)
                cl = vcat(clneg[end:-1:2], clpos[2:end])
                cm = vcat(cmneg[end:-1:2], cmpos[2:end])
            else
                cl, cm = $(name)(x, y, alpha, mach, npan, printdata)
            end

            return cl, cm
        end

    end

    @eval begin

        function $(name)(x, y, alpha, mach, npan, printdata)

            # Set up storage arrays
            naoa = length(alpha)
            cl = zeros($T, naoa)
            cm = zeros($T, naoa)

            # print header for data 
            # TODO: add option to print to file rather than terminal
            if printdata == true
                println("\nAngle\t\tCl\t\tCm")
            end

            # start unconverged
            for i in eachindex(alpha)

                # set coordinates if it's the first iteration
                if i == 1
                    $(set_coordinates)(x, y)
                    $(pane)(npan = npan)
                end

                # run XFOIL
                cl[i], cm[i] = $(solve_alpha)(alpha[i]; mach=mach)

                # print data from the run 
                #TODO: add option to print to file rather than terminal
                if printdata == true
                    @printf("%8f\t%8f\t%8f\n", real(alpha[i]), real(cl[i]), real(cm[i]))
                end

            end

            return cl, cm
        end

    end

end

# definition of alpha_sweep (viscous analysis)
for (T, name, set_coordinates, pane, solve_alpha, do_percussive_maintenance) in
    ((:Float64, :alpha_sweep, :set_coordinates, :pane, :solve_alpha, :do_percussive_maintenance),
    (:ComplexF64, :alpha_sweep_cs, :set_coordinates_cs, :pane_cs, :solve_alpha_cs, :do_percussive_maintenance_cs))

    @eval begin

        function $(name)(x, y, alpha, re; mach=0.0, iter=50, npan=140, reinit=false, 
            percussive_maintenance=!reinit, printdata=false, zeroinit=true,
            clmaxstop=false, clminstop=false, ncrit=9, 
            xtrip=(1.0,1.0))

            @assert length(x) == length(y) "x and y arrays must have the same length"

            naoa = length(alpha)

            if zeroinit
                # Set up angle of attack range going up and going down from zero if specified
                # This helps XFOIL to converge more consistently

                # separate out negative angles of attack
                aoaneg = sort(alpha[findall(real.(alpha) .< 0.0)], by=real, rev = true)

                # add zero angle of attack to negative angles of attack
                pushfirst!(aoaneg, 0.0)

                # perform angle of attack sweep for negative angles of attack
                clneg, cdneg, cdpneg, cmneg, convneg = $(name)(x,
                    y, aoaneg, re, mach, iter, npan, percussive_maintenance, printdata,
                    false, clminstop, ncrit, reinit, xtrip)

                # separate out positive angles of attack
                aoapos = sort(alpha[findall(real.(alpha) .>= 0.0)], by=real)

                # add zero angle of attack to positive angles of attack
                pushfirst!(aoapos,0.0)

                # perform angle of attack sweep for positive angles of attack
                clpos, cdpos, cdppos, cmpos, convpos = $(name)(x,
                    y, aoapos, re, mach, iter, npan, percussive_maintenance, printdata,
                    clmaxstop, false, ncrit, reinit, xtrip)

                # combine results from negative and positive runs (excluding zero angle of attack runs)
                cl = vcat(clneg[end:-1:2], clpos[2:end])
                cd = vcat(cdneg[end:-1:2], cdpos[2:end])
                cdp = vcat(cdpneg[end:-1:2], cdppos[2:end])
                cm = vcat(cmneg[end:-1:2], cmpos[2:end])
                conv = vcat(convneg[end:-1:2], convpos[2:end])
            else
                cl, cd, cdp, cm, conv = $(name)(x, y, alpha, re,
                    mach, iter, npan, percussive_maintenance, printdata, clminstop,
                    clmaxstop, ncrit, reinit, xtrip)
            end

            return cl, cd, cdp, cm, conv
        end

    end

    @eval begin

        function $(name)(x, y, alpha, re, mach, iter, npan, percussive_maintenance,
            printdata, clmaxstop, clminstop, ncrit, reinit, xtrip)

            # Set up storage arrays
            naoa = length(alpha)
            cl = zeros($T, naoa)
            cd = zeros($T, naoa)
            cdp = zeros($T, naoa)
            cm = zeros($T, naoa)
            converged = zeros(Bool, naoa)

            # print header for data #TODO: add option to print to file rather than terminal
            if printdata == true
                println("\nAngle\t\tCl\t\tCd\t\tCm\t\tConverged")
            end

            # start unconverged
            for i in eachindex(alpha)

                # set coordinates if its the first iteration, also set the coordinates
                # if convergence has failed since it resets XFOIL's initial guess
                # TODO: reset XFOIL's initial guess without setting coordinates again
                if i == 1
                    # TODO: remove hard-coded repaneling, add it as a default option
                    $(set_coordinates)(x, y)
                    $(pane)(npan = npan)
                end

                # reinitialize if previous solution didn't converge
                _reinit = reinit || (i !=1 && !converged[i-1])

                # run XFOIL
                cl[i], cd[i], cdp[i], cm[i], converged[i] = $(solve_alpha)(alpha[i], re, mach=mach, iter=iter, ncrit=ncrit, reinit=_reinit, xtrip=xtrip)

                # try percussive maintenance
                if !converged[i] && percussive_maintenance
                    cl[i], cd[i], cdp[i], cm[i], converged[i] = $(do_percussive_maintenance)(x, y, alpha[i], re, mach, iter, npan, ncrit, xtrip)
                end

                # print data from the run #TODO: add option to print to file rather than terminal
                if printdata == true
                    @printf("%8f\t%8f\t%8f\t%8f\t%d\n", real(alpha[i]), real(cl[i]), real(cd[i]), real(cm[i]), converged[i])
                end

                aoaconv = alpha[findall(converged)]
                clconv = cl[findall(converged)]
                if (real(alpha[i]) > 0.0) && (length(clconv) >= 4) # TODO: add minimum number of angle of attacks (currently 4) as an input option
                    if clmaxstop #TODO: allow clmaxstop to trigger after user specified number of decreasing lift runs
                        # break if maximum found #TODO: allow user specified function definition for what clmax is
                        if (real(clconv[end]) < real(clconv[end-1])) && (real(clconv[end-1]) < real(clconv[end-2]))
                            break
                        end
                    end
                end
                if (real(alpha[i]) < 0.0) && (length(clconv) >= 4) # TODO: add minimum number of angles of attacks (currently 4) as an input option
                    if clminstop # TODO: allow clminstop to trigger after user specified number of increaseing lift runs
                        # break if minimum found #TODO: allow user specified function definition for what clmin is
                        if (real(clconv[end]) > real(clconv[end-1])) && (real(clconv[end-1]) > real(clconv[end-2]))
                            break
                        end
                    end
                end
            end

            return cl, cd, cdp, cm, converged
        end

    end

end

"""
    do_percussive_maintenance(x, y, alpha, re, iter, npan, ncrit)

Attempts to converge previously unconverged XFOIL solutions by perturbing the
starting point for the XFOIL solve. Returns cl, cd, cdp, cm, converged
"""
do_percussive_maintenance

"""
    do_percussive_maintenance_cs(x, y, alpha, re, iter, npan, ncrit)

`do_percussive_maintenance` for the complex step enabled version of XFOIL.
"""
do_percussive_maintenance_cs

# definition of do_percussive_maintenance
for (T, name, set_coordinates, pane, solve_alpha) in
    ((:Float64, :do_percussive_maintenance, :set_coordinates, :pane, :solve_alpha),
    (:ComplexF64, :do_percussive_maintenance_cs, :set_coordinates_cs, :pane_cs, :solve_alpha_cs))

    @eval begin

        function $(name)(x, y, alpha, re, mach, iter, npan, ncrit, xtrip)

            # set new parameters to original parameters
            remod = re
            alphamod = alpha

            f = (alphamod, remod) -> $(solve_alpha)(alphamod, remod, mach=mach, iter=iter, ncrit=ncrit, xtrip=xtrip)

            # TODO: add number of iterations of percussive maintenance as an input parameter
            # perhaps by adding a PercussiveMaintenance type with customizable parameters
            for j = 1:25
                # perturb new parameters
                remod = remod+1000
                alphamod = 0.95*alphamod

                # reinput coordinates in order to re-initialize the XFOIL solution
                # TODO: allow reinitializing XFOIL without re-inputting coordinates
                # TODO: change hard-coded pane command to an option
                $(set_coordinates)(x, y)
                $(pane)(npan=npan)

                # try modified parameters
                cl, cd, cdp, cm, converged = f(alphamod, remod)

                # exit loop if converged
                if converged
                    break
                end
            end

            # Gradually bring the parameters back to those of the original problem
            if converged
                # get difference between actual parameters and modified parameters
                rediff = remod - re
                aoadiff = alphamod-alpha
                # over ten iterations, gradually return to the original problem
                # TODO: add number of iterations taken to return to the original problem
                # as a customizable parameter
                for j = 1:9
                    remod = remod - rediff/10
                    alphamod = alphamod - aoadiff/10
                    cl, cd, cdp, cm, converged = f(alphamod, remod)
                end
                # now try solving the original problem again
                cl, cd, cdp, cm, converged = f(alpha, re)
            end

            return cl, cd, cdp, cm, converged
        end

    end

end
