"""
    setCoordinates(x,y)
Input x and y airfoil coordinates into XFOIL
Coordinates must start at the trailing edge and loop counterclockwise.
"""
function setCoordinates(x::AbstractArray{<:Real,1},y::AbstractArray{<:Real,1})
  if length(x) != length(y)
    error("x and y arrays must match in length")
  end
  if length(x) > 572
    error("Array lengths must be less than 573")
  end
  nb = length(x)
  xfoilglobals.nb[1] = nb
  xfoilglobals.xb[1:nb] = x
  xfoilglobals.yb[1:nb] = y
  ccall( (:xfoil_, libxfoil), Void,())
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
function pane(;npan::Integer=140,cvpar::Real=1.0,cterat::Real=0.15,
  ctrrat::Real=0.2,xsref1::Real=1.0,xsref2::Real=1.0,xpref1::Real=1.0,
  xpref2::Real=1.0)
  xfoilglobals.npan[1] = npan
  xfoilglobals.cvpar[1] = cvpar
  xfoilglobals.cterat[1] = cterat
  xfoilglobals.ctrrat[1] = ctrrat
  xfoilglobals.xsref1[1] = xsref1
  xfoilglobals.xsref2[1] = xsref2
  xfoilglobals.xpref1[1] = xpref1
  xfoilglobals.xpref2[1] = xpref2
  ccall( (:pangen_, libxfoil), Void, ())
  return nothing
end

"""
    solveAlpha(angle::Float64;re::Float64=1e5,mach::Float64=0.0,iter::Integer=50)
Compute the flow solution at specified angle of attack (in degrees).
Returns cl,cd,cdp,cm,converged
"""
function solveAlpha(angle::Real,re::Real;mach::Real=0.0,iter::Integer=50)
  cl = zeros(Float64,1)
  cd = zeros(Float64,1)
  cdp = zeros(Float64,1)
  cm = zeros(Float64,1)
  lvconvout = zeros(Int32,1)
  lexitflagout = zeros(Int32,1)
  xfoilglobals.adeg[1] = angle
  xfoilglobals.reinf1[1] = re
  xfoilglobals.minf1[1] = mach
  xfoilglobals.itmax[1] = iter
  ccall((:oper_,libxfoil),Void,())
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
function bldump(IZX=322)
  nelem = zeros(Int32,1)
  s = zeros(Float64,IZX)
  x = zeros(Float64,IZX)
  y = zeros(Float64,IZX)
  ue = zeros(Float64,IZX)
  dstar = zeros(Float64,IZX)
  theta = zeros(Float64,IZX)
  cf = zeros(Float64,IZX)
  ccall( (:bldump_, libxfoil), Void,
  (Ref{Int32},Ref{Float64},Ref{Float64},Ref{Float64},Ref{Float64},Ref{Float64},Ref{Float64},Ref{Float64}),
  nelem,s,x,y,ue,dstar,theta,cf)
  return s[1:nelem[1]],x[1:nelem[1]],y[1:nelem[1]],ue[1:nelem[1]],dstar[1:nelem[1]],theta[1:nelem[1]],cf[1:nelem[1]]
end
