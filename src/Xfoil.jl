module Xfoil

export setCoordinates,solveAlpha,pane,bldump,getglobals

# Get XFOIL libraries
const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Xfoil.jl not properly installed. Please run Pkg.build(\"Xfoil\") then restart Julia.")
end

__precompile__()

# Get globals once for all future use
function __init__()
    global const xfoilglobals = getglobals()
    global const xfoilglobals_cs = getglobals_cs()
end

# Load methods for getting XFOIL globals
include("xfoilglobals.jl")
include("xfoilglobals_cs.jl")

# Load basic methods for running XFOIL
include("xfoilbasic.jl")
include("xfoilbasic_cs.jl")

# Load methods for running XFOIL sweeps
include("xfoilsweep.jl")
include("xfoilsweep_cs.jl")

end #module
