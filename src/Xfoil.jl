module Xfoil
using Printf

export setCoordinates, solveAlpha, pane, bldump

# Get XFOIL libraries
const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Xfoil.jl not properly installed. Please run Pkg.build(\"Xfoil\") then restart Julia.")
end

# Constant variables for array dimensions
const IBX=572
const IPX=5
const IQX=286
const ISX=2
const IZX=322
const IVX=229
const NPX=8
const IWK=36

# Load methods for getting XFOIL globals
include("xfoilglobals.jl")
include("xfoilglobals_cs.jl")

# Get globals once for all future use
# const xfoilglobals = Ref{globalstruct}()
# const xfoilglobals_cs = Ref{globalstruct_cs}()
function __init__()
    global xfoilglobals = getglobals()
    global xfoilglobals_cs = getglobals_cs()
    return nothing
end

# Load basic methods for running XFOIL
include("xfoilbasic.jl")
include("xfoilbasic_cs.jl")

# Load methods for running XFOIL sweeps
include("xfoilsweep.jl")
include("xfoilsweep_cs.jl")

end #module
