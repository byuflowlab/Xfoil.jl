"""
    setCoordinates_cs(x,y)
Input x and y airfoil coordinates into XFOIL
Coordinates must start at the trailing edge and loop counterclockwise.
"""
function setCoordinates_cs(x::Array{Complex128,1},y::Array{Complex128,1})
  if length(x) != length(y)
    error("x and y arrays must match in length")
  end
  if length(x) > 572
    error("Array lengths must be less than 573")
  end
  nb = length(x)
  xfoilglobals_cs.nb[1] = nb
  xfoilglobals_cs.xb[1:nb] = x
  xfoilglobals_cs.yb[1:nb] = y
  ccall( (:xfoil_, libxfoil_cs), Void,())
  return nothing
end

"""
    pane_cs(; <keyword arguments>)
Run XFOIL's PANE Command (repanel airfoil)
# Arguments
- `npan::Integer=140`: Number of panel nodes
- `cvpar::Complex128=1.0`: Panel bunching parameter
- `cterat::Complex128=0.15`: TE/LE panel density ratio
- `ctrrat::Complex128=0.2`: Refined-area/LE panel density ratio
- `xsref1::Complex128=1.0`: Top side refined area x/c limits
- `xsref2::Complex128=1.0`:
- `xpref1::Complex128=1.0`: Bottom side refined area x/c limits
- `xpref2::Complex128=1.0`:
"""
function pane_cs(;npan::Integer=140,cvpar::Complex128=1.0+0.0im,cterat::Complex128=0.15+0.0im,
  ctrrat::Complex128=0.2+0.0im,xsref1::Complex128=1.0+0.0im,xsref2::Complex128=1.0+0.0im,xpref1::Complex128=1.0+0.0im,
  xpref2::Complex128=1.0+0.0im)
  xfoilglobals_cs.npan[1] = npan
  xfoilglobals_cs.cvpar[1] = cvpar
  xfoilglobals_cs.cterat[1] = cterat
  xfoilglobals_cs.ctrrat[1] = ctrrat
  xfoilglobals_cs.xsref1[1] = xsref1
  xfoilglobals_cs.xsref2[1] = xsref2
  xfoilglobals_cs.xpref1[1] = xpref1
  xfoilglobals_cs.xpref2[1] = xpref2
  ccall( (:pangen_, libxfoil_cs), Void, ())
  return nothing
end

"""
    solveAlpha_cs(angle::Complex128;re::Complex128=1e5+0.0im,mach::Complex128=0.0+0.0im,iter::Int64=50)
Compute the flow solution at specified angle of attack (in degrees).
Returns cl,cd,cdp,cm,converged
"""
function solveAlpha_cs(angle::Complex128;re::Complex128=1e5+0.0im,mach::Complex128=0.0+0.0im,iter::Integer=50)
  cl = zeros(Complex128,1)
  cd = zeros(Complex128,1)
  cdp = zeros(Complex128,1)
  cm = zeros(Complex128,1)
  lvconvout = zeros(Int32,1)
  lexitflagout = zeros(Int32,1)
  xfoilglobals_cs.adeg[1] = angle
  xfoilglobals_cs.reinf1[1] = re
  xfoilglobals_cs.minf1[1] = mach
  xfoilglobals_cs.itmax[1] = iter
  ccall((:oper_,libxfoil_cs),Void,())
  cl = xfoilglobals_cs.cl[1]
  cd = xfoilglobals_cs.cd[1]
  cdp = xfoilglobals_cs.cdp[1]
  cm = xfoilglobals_cs.cm[1]
  lvconv = convert(Bool,xfoilglobals_cs.lvconv[1])
  return cl[1],cd[1],cdp[1],cm[1],lvconv
end

"""
    bldump_cs()
Get boundary layer parameters
Returns s,x,y,ue,dstar,theta,cf
"""
function bldump_cs()
  nelem = zeros(Int32,1)
  s = zeros(Complex128,IZX)
  x = zeros(Complex128,IZX)
  y = zeros(Complex128,IZX)
  ue = zeros(Complex128,IZX)
  dstar = zeros(Complex128,IZX)
  theta = zeros(Complex128,IZX)
  cf = zeros(Complex128,IZX)
  ccall( (:bldump_, libxfoil_cs), Void,
  (Ref{Int32},Ref{Complex128},Ref{Complex128},Ref{Complex128},Ref{Complex128},Ref{Complex128},Ref{Complex128},Ref{Complex128}),
  nelem,s,x,y,ue,dstar,theta,cf)
  return s[1:nelem[1]],x[1:nelem[1]],y[1:nelem[1]],ue[1:nelem[1]],dstar[1:nelem[1]],theta[1:nelem[1]],cf[1:nelem[1]]
end
