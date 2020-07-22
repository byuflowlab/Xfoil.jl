"""
    setCoordinates(x,y)
    Input x and y airfoil coordinates into XFOIL
    Coordinates must start at the trailing edge and loop counterclockwise.
"""
function setCoordinates(x::AbstractArray{<:Real,1},y::AbstractArray{<:Real,1})
    if length(x) != length(y)
        error("x and y arrays must match in length")
    end
    if length(x) > IBX
        error("Array lengths must be less than 573")
    end
    nb = length(x)
    xfoilglobals.nb[1] = nb
    xfoilglobals.xb[1:nb] = x
    xfoilglobals.yb[1:nb] = y
    ccall( (:xfoil_, libxfoil), Nothing, ())
    return nothing
end

"""
    pane(; <keyword arguments>)
    Run XFOIL's PANE Command (repanel airfoil)
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
function pane(;npan::Integer=140, cvpar::Real=1.0, cterat::Real=0.15,
    ctrrat::Real=0.2, xsref1::Real=1.0, xsref2::Real=1.0, xpref1::Real=1.0,
    xpref2::Real=1.0)
    xfoilglobals.npan[1] = npan
    xfoilglobals.cvpar[1] = cvpar
    xfoilglobals.cterat[1] = cterat
    xfoilglobals.ctrrat[1] = ctrrat
    xfoilglobals.xsref1[1] = xsref1
    xfoilglobals.xsref2[1] = xsref2
    xfoilglobals.xpref1[1] = xpref1
    xfoilglobals.xpref2[1] = xpref2
    ccall( (:pangen_, libxfoil), Nothing, ())
    return nothing
end

"""
    solveAlpha(angle::Float64;re::Float64=1e5,mach::Float64=0.0,iter::Integer=50)
    Compute the flow solution at specified angle of attack (in degrees).
    Returns cl,cd,cdp,cm,converged
"""
function solveAlpha(angle::Real, re::Real; mach::Real=0.0,
    iter::Integer=50, ncrit=9)

    xfoilglobals.adeg[1] = angle
    xfoilglobals.reinf1[1] = re
    xfoilglobals.minf1[1] = mach
    xfoilglobals.itmax[1] = iter
    xfoilglobals.acrit[1] = ncrit

    ccall((:oper_, libxfoil), Nothing, ())

    cl = xfoilglobals.cl[1]
    cd = xfoilglobals.cd[1]
    cdp = xfoilglobals.cdp[1]
    cm = xfoilglobals.cm[1]
    lvconv = convert(Bool,xfoilglobals.lvconv[1])

    return cl[1],cd[1],cdp[1],cm[1],lvconv
end

"""
bldump()
Get boundary layer parameters
Returns s,x,y,ue,dstar,theta,cf
"""
function bldump()

    nelem = zeros(Int32, 1)
    s = zeros(Float64, IZX)
    x = zeros(Float64, IZX)
    y = zeros(Float64, IZX)
    ue = zeros(Float64, IZX)
    dstar = zeros(Float64, IZX)
    theta = zeros(Float64, IZX)
    cf = zeros(Float64, IZX)

    ccall( (:bldump_, libxfoil), Nothing,
        (Ref{Int32}, Ref{Float64}, Ref{Float64}, Ref{Float64}, Ref{Float64},
        Ref{Float64}, Ref{Float64}, Ref{Float64}),
        nelem, s, x, y, ue, dstar, theta, cf)

    return s[1:nelem[1]], x[1:nelem[1]], y[1:nelem[1]], ue[1:nelem[1]],
        dstar[1:nelem[1]], theta[1:nelem[1]], cf[1:nelem[1]]
end

"""
get_xsep()
Get x-position of back-most separation point over each face. The separation
point is defined as the point where the friction coefficient becomes cf<=0.
Returns xsepup, xseplo
"""
function get_xsep(; lecrit=1e-4)


    global xfoilglobals
    s, x, y, ue, dstar, theta, cf = bldump()

    # Find indices of LE and TE edge
    xile = findfirst(  x -> abs(x-xfoilglobals.xle[1])<=lecrit, x)
    xite1 = findfirst( x -> abs(x-xfoilglobals.xte[1])<=lecrit, x)
    xite2 = findnext(  x -> abs(x-xfoilglobals.xte[1])<=lecrit, x, xite1+1)

    # Get both faces going from TE to LE
    iup = xite1:(-1)^(xite1>xile):xile
    ilo = xite2:(-1)^(xite2>xile):xile
    # xup, yup = x[iup], y[iup]
    # xlo, ylo = x[ilo], y[ilo]

    # Find first separation point from the TE to LE on each side
    iupsep = findfirst( val -> val>=0, cf[iup])
    ilosep = findfirst( val -> val>=0, cf[ilo])

    iupsep == nothing ? iupsep = length(iup) : nothing
    ilosep == nothing ? ilosep = length(ilo) : nothing

    xsepup = x[iup[iupsep]]
    xseplo = x[ilo[ilosep]]

    return xsepup, xseplo
end
