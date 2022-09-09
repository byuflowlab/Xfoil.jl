"""
    set_coordinates(x, y)

Input x and y airfoil coordinates into XFOIL. Coordinates must start at the
trailing edge and loop counterclockwise.
"""
set_coordinates

"""
    set_coordinates_cs(x, y)

`set_coordinates` for complex step enabled version of XFOIL.
"""
set_coordinates_cs

# definition of set_coordinates
for (T, name, globals, library) in
    ((:Float64, :set_coordinates, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :set_coordinates_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)(x, y)

            nx = length(x)

            @assert nx == length(y) "x and y-coordinate arrays must match in length"
            @assert nx <= IBX "x and y-coordinate array lengths must be less than $IBX"

            $(globals).nb[1] = nx
            $(globals).xb[1:nx] = x
            $(globals).yb[1:nx] = y

            ccall( (:xfoil_, $(library)), Nothing, ())

            return nothing
        end

    end

end

"""
    pane(; kwargs...)

Run XFOIL's PANE command (Repanel the input airfoil)

# Arguments
- `npan::Integer=140`: Number of panel nodes
- `cvpar::Float64=1.0`: Panel bunching parameter
- `cterat::Float64=0.15`: TE/LE panel density ratio
- `ctrrat::Float64=0.2`: Refined-area/LE panel density ratio
- `xsref1::Float64=1.0`: Top side refined area x/c limits
- `xsref2::Float64=1.0`:
- `xpref1::Float64=1.0`: Bottom side refined area x/c limits
- `xpref2::Float64=1.0`:
"""
pane

"""
    pane_cs(; kwargs...)

`pane` for complex step enabled version of XFOIL.
"""
pane_cs

# definition of pane
for (T, name, globals, library) in
    ((:Float64, :pane, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :pane_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)(; npan=140, cvpar=1.0, cterat=0.15, ctrrat=0.2, xsref1=1.0,
            xsref2=1.0, xpref1=1.0, xpref2=1.0)

            $(globals).npan[1] = npan
            $(globals).cvpar[1] = cvpar
            $(globals).cterat[1] = cterat
            $(globals).ctrrat[1] = ctrrat
            $(globals).xsref1[1] = xsref1
            $(globals).xsref2[1] = xsref2
            $(globals).xpref1[1] = xpref1
            $(globals).xpref2[1] = xpref2

            ccall( (:pangen_, $(library)), Nothing, ())

            return nothing
        end

    end

end

"""
    solve_alpha(alpha; mach=0.0)

Compute the inviscid flow solution at the specified angle of attack. Return cl and cm.

# Arguments:
 - `alpha`: Angle of attack (degrees)
 - `mach`: Mach number
"""
solve_alpha(alpha; kwargs...)

"""
    solve_alpha_cs(alpha; mach=0.0)

[`solve_alpha`](@ref) for the complex step enabled version of XFOIL.
"""
solve_alpha_cs(alpha; kwargs...)

# definition of solve_alpha (inviscid)
for (T, name, globals, library) in
    ((:Float64, :solve_alpha, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :solve_alpha_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)(alpha; mach=0.0)

            $(globals).lvisc[1] = false
            $(globals).adeg[1] = alpha
            $(globals).minf1[1] = mach

            ccall((:oper_, $(library)), Nothing, ())

            cl = $(globals).cl[1]
            cm = $(globals).cm[1]

            return cl[1], cm[1]
        end

    end

end

"""
    solve_alpha(alpha, re; mach=0.0, iter=50, ncrit=9)

Compute the viscous flow solution at the specified angle of attack. Return cl, cd, cdp,
cm, and a convergence flag indicating whether the solution converged.

# Arguments:
 - `alpha`: Angle of attack (degrees)
 - `re`: Reynolds number
 - `mach`: Mach number
 - `iter`: Number of iterations
 - `ncrit`: turbulence level
"""
solve_alpha(alpha, re; kwargs...)

"""
    solve_alpha_cs(alpha, re; mach=0.0, iter=50, ncrit=9)

[`solve_alpha`](@ref) for the complex step enabled version of XFOIL.
"""
solve_alpha_cs(alpha, re; kwargs...)

# definition of solve_alpha (viscous)
for (T, name, globals, library) in
    ((:Float64, :solve_alpha, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :solve_alpha_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)(alpha, re; mach=0.0, iter=50, ncrit=9, reinit=false)

            if reinit
                # re-initialize (if specified)
                $(globals).lipan[1] = false
                $(globals).lblini[1] = false
            else
                # remove complex component of the initial guess
                $(globals).sst[1] = real($(globals).sst[1])
                $(globals).sst_go[1] = real($(globals).sst_go[1])
                $(globals).sst_gp[1] = real($(globals).sst_gp[1])


                $(globals).xssi .= real.($(globals).xssi)
                $(globals).thet .= real.($(globals).thet)
                $(globals).dstr .= real.($(globals).dstr)
                $(globals).uinv .= real.($(globals).uinv)
                $(globals).uedg .= real.($(globals).uedg)
                $(globals).mass .= real.($(globals).mass)
                $(globals).tau .= real.($(globals).tau)
                $(globals).dis .= real.($(globals).dis)
                $(globals).ctq .= real.($(globals).ctq)
                $(globals).delt .= real.($(globals).delt)
                $(globals).ctau .= real.($(globals).ctau)

                $(globals).vti .= real.($(globals).vti)
                $(globals).wgap .= real.($(globals).wgap)
                $(globals).qvis .= real.($(globals).qvis)
                $(globals).gam .= real.($(globals).gam)
                $(globals).gam_a .= real.($(globals).gam_a)
                $(globals).qinv_a .= real.($(globals).qinv_a)
            end
            
            # set inputs
            $(globals).lvisc[1] = true
            $(globals).adeg[1] = alpha
            $(globals).reinf1[1] = re
            $(globals).minf1[1] = mach
            $(globals).itmax[1] = iter
            $(globals).acrit[1] = ncrit

            # perform analysis
            ccall((:oper_, $(library)), Nothing, ())

            # extract outputs
            cl = $(globals).cl[1]
            cd = $(globals).cd[1]
            cdp = $(globals).cdp[1]
            cm = $(globals).cm[1]
            lvconv = convert(Bool, $(globals).lvconv[1])

            return cl[1], cd[1], cdp[1], cm[1], lvconv
        end

    end

end

"""
    bldump()

Return boundary layer parameters `s`, `x`, `y`, `ue`, `dstar`, `theta`, and `cf`
"""
bldump

"""
    bldump_cs()

`bldump` for the complex step enabled version of XFOIL.
"""
bldump_cs

# definition of bldump
for (T, name, globals, library) in
    ((:Float64, :bldump, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :bldump_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)()

            nelem = zeros(Int32, 1)
            s = zeros($T, IZX)
            x = zeros($T, IZX)
            y = zeros($T, IZX)
            ue = zeros($T, IZX)
            dstar = zeros($T, IZX)
            theta = zeros($T, IZX)
            cf = zeros($T, IZX)

            ccall( (:bldump_, $(library)), Nothing,
                (Ref{Int32}, Ref{$T}, Ref{$T}, Ref{$T}, Ref{$T},
                Ref{$T}, Ref{$T}, Ref{$T}),
                nelem, s, x, y, ue, dstar, theta, cf)

            return s[1:nelem[1]], x[1:nelem[1]], y[1:nelem[1]], ue[1:nelem[1]],
                dstar[1:nelem[1]], theta[1:nelem[1]], cf[1:nelem[1]]
        end

    end

end

"""
    cpdump()

Return `x` and `cp`
"""
cpdump

"""
    cpdump_cs()

`cpdump` for the complex step enabled version of XFOIL.
"""
cpdump_cs

# definition of cpdump
for (T, name, globals, library) in
    ((:Float64, :cpdump, :xfoilglobals, :libxfoil_light),
    (:ComplexF64, :cpdump_cs, :xfoilglobals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)()

            nelem = zeros(Int32, 1)
            x = zeros($T, IZX)
            cp = zeros($T, IZX)

            ccall( (:cpdump_, $(library)), Nothing,
                (Ref{Int32}, Ref{$T}, Ref{$T}),
                nelem, x, cp)

            return x[1:nelem[1]], cp[1:nelem[1]]
        end

    end

end