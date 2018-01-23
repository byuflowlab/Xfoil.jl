using BinDeps
using Compat

@BinDeps.setup

libxfoiljl = library_dependency("libxfoiljl")

installdir=joinpath(BinDeps.depsdir(libxfoiljl),"usr","lib")
srcdir = joinpath(BinDeps.depsdir(libxfoiljl),"src","xfoil")

if !isfile(installdir)
    mkpath(installdir)
end

suffix = is_apple() ? "dylib" : "so"

provides(SimpleBuild,
    (@build_steps begin
        ChangeDirectory(srcdir)
        `make SUFFIX=$suffix`
        `make -j1 install INSTALL_DIR=$installdir SUFFIX=$suffix`
    end),libxfoiljl, os = :Unix)

@compat @BinDeps.install Dict(:libxfoiljl => :libxfoiljl)
