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
function set_coordinates(inst::XfoilInstance, x, y)

    nx = length(x)

    @assert nx == length(y) "x and y-coordinate arrays must match in length"
    @assert nx <= IBX "x and y-coordinate array lengths must be less than $IBX"

    # input the buffer airfoil coordinates
    inst.globals.nb[1] = nx
    inst.globals.xb[1:nx] = x
    inst.globals.yb[1:nx] = y

    ccall(inst.xfoil, Nothing, ())

    return nothing
end

# the argument-less API operates on the default (shared) instances
set_coordinates(x, y) = set_coordinates(default_instance[], x, y)
set_coordinates_cs(x, y) = set_coordinates(default_instance_cs[], x, y)

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
function pane(inst::XfoilInstance; npan=140, cvpar=1.0, cterat=0.15, ctrrat=0.2,
    xsref1=1.0, xsref2=1.0, xpref1=1.0, xpref2=1.0)

    g = inst.globals
    g.npan[1] = npan
    g.cvpar[1] = cvpar
    g.cterat[1] = cterat
    g.ctrrat[1] = ctrrat
    g.xsref1[1] = xsref1
    g.xsref2[1] = xsref2
    g.xpref1[1] = xpref1
    g.xpref2[1] = xpref2

    ccall(inst.pangen, Nothing, ())

    n = g.n[1]
    x = g.x[1:n]
    y = g.y[1:n]

    return x, y
end

pane(; kwargs...) = pane(default_instance[]; kwargs...)
pane_cs(; kwargs...) = pane(default_instance_cs[]; kwargs...)

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
function solve_alpha(inst::XfoilInstance, alpha; mach=0.0)

    g = inst.globals
    g.lvisc[1] = false
    g.adeg[1] = alpha
    g.minf1[1] = mach

    ccall(inst.oper, Nothing, ())

    return g.cl[1], g.cm[1]
end

solve_alpha(alpha; kwargs...) = solve_alpha(default_instance[], alpha; kwargs...)
solve_alpha_cs(alpha; kwargs...) = solve_alpha(default_instance_cs[], alpha; kwargs...)

"""
    solve_alpha(alpha, re; mach=0.0, iter=50, ncrit=9, reinit=false, xtrip=(1.0,1.0))

Compute the viscous flow solution at the specified angle of attack. Return cl, cd, cdp,
cm, and a convergence flag indicating whether the solution converged.

# Arguments:
 - `alpha`: Angle of attack (degrees)
 - `re`: Reynolds number
 - `mach`: Mach number
 - `iter`: Number of iterations
 - `ncrit`: turbulence level
 - `reinit`: reinitialize the solution? (rather than use the previous solution)
 - `xtrip`: forced transition x/c locations on top/bottom sides
"""
solve_alpha(alpha, re; kwargs...)

"""
    solve_alpha_cs(alpha, re; mach=0.0, iter=50, ncrit=9, xtrip=(1.0,1.0))

[`solve_alpha`](@ref) for the complex step enabled version of XFOIL.
"""
solve_alpha_cs(alpha, re; kwargs...)

# definition of solve_alpha (viscous)
function solve_alpha(inst::XfoilInstance, alpha, re; mach=0.0, iter=50, ncrit=9,
    reinit=false, xtrip=(1.0,1.0))

    g = inst.globals

    if reinit
        # re-initialize (if specified)
        g.lipan[1] = false
        g.lblini[1] = false
    end

    # set inputs
    g.lvconv[1] = false
    g.lvisc[1] = true
    g.adeg[1] = alpha
    g.reinf1[1] = re
    g.minf1[1] = mach
    g.itmax[1] = iter
    g.acrit[1] = ncrit
    g.xstrip[1] = xtrip[1]
    g.xstrip[2] = xtrip[2]

    # perform analysis
    ccall(inst.oper, Nothing, ())

    # extract outputs
    cl = g.cl[1]
    cd = g.cd[1]
    cdp = g.cdp[1]
    cm = g.cm[1]
    lvconv = convert(Bool, g.lvconv[1])

    return cl, cd, cdp, cm, lvconv
end

solve_alpha(alpha, re; kwargs...) = solve_alpha(default_instance[], alpha, re; kwargs...)
solve_alpha_cs(alpha, re; kwargs...) = solve_alpha(default_instance_cs[], alpha, re; kwargs...)

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
function bldump(inst::XfoilInstance{T}) where {T}

    nelem = zeros(Int32, 1)
    s = zeros(T, IZX)
    x = zeros(T, IZX)
    y = zeros(T, IZX)
    ue = zeros(T, IZX)
    dstar = zeros(T, IZX)
    theta = zeros(T, IZX)
    cf = zeros(T, IZX)

    ccall(inst.bldump, Nothing,
        (Ref{Int32}, Ref{T}, Ref{T}, Ref{T}, Ref{T},
        Ref{T}, Ref{T}, Ref{T}),
        nelem, s, x, y, ue, dstar, theta, cf)

    return s[1:nelem[1]], x[1:nelem[1]], y[1:nelem[1]], ue[1:nelem[1]],
        dstar[1:nelem[1]], theta[1:nelem[1]], cf[1:nelem[1]]
end

bldump() = bldump(default_instance[])
bldump_cs() = bldump(default_instance_cs[])

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
function cpdump(inst::XfoilInstance{T}) where {T}

    nelem = zeros(Int32, 1)
    x = zeros(T, IZX)
    cp = zeros(T, IZX)

    ccall(inst.cpdump, Nothing,
        (Ref{Int32}, Ref{T}, Ref{T}),
        nelem, x, cp)

    return x[1:nelem[1]], cp[1:nelem[1]]
end

cpdump() = cpdump(default_instance[])
cpdump_cs() = cpdump(default_instance_cs[])