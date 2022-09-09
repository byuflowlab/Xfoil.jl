module Xfoil

using xfoil_light_jll, Printf

export set_coordinates, pane, solve_alpha, get_xsep, bldump, cpdump, alpha_sweep
export set_coordinates_cs, pane_cs, solve_alpha_cs, get_xsep_cs, bldump_cs, cpdump_cs, alpha_sweep_cs

# Fixed array limitations from Fortran shared libraries
const IBX=572
const IPX=5
const IQX=286
const ISX=2
const IZX=322
const IVX=229
const NPX=8
const IWK=36

function __init__()
    # wrap XFOIL global variables
    global xfoilglobals = get_globals()
    global xfoilglobals_cs = get_globals_cs()
    return nothing
end

# wrappers for XFOIL global variables
include("globals.jl")

# wrappers for XFOIL functions
include("libxfoil.jl")

# higher level functions
include("higherlevel.jl")

end #module
