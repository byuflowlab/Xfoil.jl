using BinDeps
using Compat

@BinDeps.setup

libxfoiljl = library_dependency("libxfoiljl")

installdir=joinpath(BinDeps.depsdir(libxfoiljl),"usr","lib")
srcdir = joinpath(BinDeps.depsdir(libxfoiljl),"src","xfoil")

if !isfile(installdir)
    mkpath(installdir)
end

provides(SimpleBuild,
    (@build_steps begin
        ChangeDirectory(srcdir)
        `make XFOIL_LIB=libxfoiljl.so`
        `make -j1 install INSTALL_DIR=$installdir XFOIL_LIB=libxfoiljl.so`
    end),libxfoiljl, os = :Linux)

provides(SimpleBuild,
    (@build_steps begin
        ChangeDirectory(srcdir)
        `make XFOIL_LIB=libxfoiljl.dylib`
        `make -j1 install INSTALL_DIR=$installdir XFOIL_LIB=libxfoiljl.so`
    end),libxfoiljl, os = :Darwin)

@compat @BinDeps.install Dict(:libxfoiljl => :libxfoiljl)
