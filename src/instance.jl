"""
    XfoilInstance{T}

A single, self-contained XFOIL solver backed by its own copy of the shared
library. XFOIL keeps all of its state in Fortran `COMMON` blocks, which are
global to a loaded shared library and therefore shared by every thread in the
process. Loading a private copy of the library per instance gives each instance
independent state, so several instances can solve concurrently on different
threads. `T` is the element type (`Float64`, or `ComplexF64` for the complex
step version).

Fields are the library `handle`, the wrapped [`XfoilGlobals`](@ref) `globals`,
the temporary `dir` holding the library copy (empty for a shared instance), and
cached pointers to the XFOIL entry points.
"""
struct XfoilInstance{T}
    handle::Ptr{Nothing}
    globals::XfoilGlobals{T}
    dir::String
    xfoil::Ptr{Nothing}
    pangen::Ptr{Nothing}
    oper::Ptr{Nothing}
    bldump::Ptr{Nothing}
    cpdump::Ptr{Nothing}
end

"""
    XfoilInstance{T}(; isolated=true)

Create an XFOIL instance for element type `T`. With `isolated=true` a private
copy of the shared library is loaded so the instance owns its global state; with
`isolated=false` the primary shared library is opened, sharing state with the
default instance. Isolated instances are what make threaded sweeps such as
[`alpha_sweep_threaded`](@ref) safe.
"""
function XfoilInstance{T}(; isolated=true) where {T}
    srcpath = T <: Complex ? xfoil_light_jll.get_libxfoil_light_cs_path() :
        xfoil_light_jll.get_libxfoil_light_path()
    if isolated
        dir = mktempdir()
        path = joinpath(dir, basename(srcpath))
        cp(srcpath, path; force=true)
    else
        dir = ""
        path = srcpath
    end
    handle = Libdl.dlopen(path, Libdl.RTLD_LOCAL | Libdl.RTLD_NOW)
    globals = T <: Complex ? get_globals_cs(handle) : get_globals(handle)
    return XfoilInstance{T}(handle, globals, dir,
        Libdl.dlsym(handle, :xfoil_), Libdl.dlsym(handle, :pangen_),
        Libdl.dlsym(handle, :oper_), Libdl.dlsym(handle, :bldump_),
        Libdl.dlsym(handle, :cpdump_))
end

"""
    close(inst::XfoilInstance)

Release the resources held by `inst`: close its `dlopen` handle and, for isolated
instances, remove the temporary directory holding the private library copy. A
shared instance (`dir == ""`) leaves the primary library loaded.
"""
function Base.close(inst::XfoilInstance)
    Libdl.dlclose(inst.handle)
    isempty(inst.dir) || rm(inst.dir; recursive=true, force=true)
    return nothing
end

const worker_pool = Ref{Vector{XfoilInstance{Float64}}}()
const worker_pool_cs = Ref{Vector{XfoilInstance{ComplexF64}}}()
const worker_pool_lock = ReentrantLock()

"""
    worker_instances(T, n)

Return `n` isolated [`XfoilInstance`](@ref)s of element type `T` from a cached
pool, creating new ones only as needed. Reusing the pool across calls avoids
repeatedly copying and loading the shared library (and leaking temporary files)
on every threaded sweep.
"""
function worker_instances(::Type{T}, n) where {T}
    pool_ref = T <: Complex ? worker_pool_cs : worker_pool
    return lock(worker_pool_lock) do
        isassigned(pool_ref) || (pool_ref[] = XfoilInstance{T}[])
        pool = pool_ref[]
        while length(pool) < n
            push!(pool, XfoilInstance{T}(isolated=true))
        end
        return pool[1:n]
    end
end

"""
    close_worker_pools()

Close every pooled isolated [`XfoilInstance`](@ref) and empty the pools, releasing
their library handles and temporary directories. Registered to run at process exit.
"""
function close_worker_pools()
    lock(worker_pool_lock) do
        for pool_ref in (worker_pool, worker_pool_cs)
            if isassigned(pool_ref)
                foreach(close, pool_ref[])
                empty!(pool_ref[])
            end
        end
    end
    return nothing
end
