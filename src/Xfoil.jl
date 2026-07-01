module Xfoil

using xfoil_light_jll, Printf, Libdl

export set_coordinates, pane, solve_alpha, get_xsep, bldump, cpdump, alpha_sweep
export set_coordinates_cs, pane_cs, solve_alpha_cs, get_xsep_cs, bldump_cs, cpdump_cs, alpha_sweep_cs
export XfoilInstance, alpha_sweep_threaded, alpha_sweep_threaded_cs

# Fixed array limitations from Fortran shared libraries
const IBX=572
const IPX=5
const IQX=286
const ISX=2
const IZX=322
const IVX=229
const NPX=8
const IWK=36
const NCOM=73

# wrappers for XFOIL global variables
include("globals.jl")

# XFOIL solver instances (isolated shared-library copies)
include("instance.jl")

# wrappers for XFOIL functions
include("libxfoil.jl")

# higher level functions
include("higherlevel.jl")

# default (shared-state) XFOIL instances backing the argument-less API
const default_instance = Ref{XfoilInstance{Float64}}()
const default_instance_cs = Ref{XfoilInstance{ComplexF64}}()

function __init__()
    default_instance[] = XfoilInstance{Float64}(isolated=false)
    default_instance_cs[] = XfoilInstance{ComplexF64}(isolated=false)
    # kept for backwards compatibility / direct access to the global state
    global xfoilglobals = default_instance[].globals
    global xfoilglobals_cs = default_instance_cs[].globals
    return nothing
end

end #module
