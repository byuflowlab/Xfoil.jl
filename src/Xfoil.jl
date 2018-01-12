module Xfoil

export setCoordinates,solveAlpha,pane,bldump,getglobals

# Get XFOIL library
const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("Xfoil.jl not properly installed. Please run Pkg.build(\"Xfoil\") then restart Julia.")
end

# Load methods for getting XFOIL globals
include("xfoilglobals.jl")

# Load basic methods for running XFOIL
include("xfoilbasic.jl")

# Load methods for running XFOIL sweeps
include("xfoilsweep.jl")

end #module
