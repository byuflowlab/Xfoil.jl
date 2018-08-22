using BinDeps

@BinDeps.setup

libxfoil = library_dependency("libxfoil")
libxfoil_cs = library_dependency("libxfoil_cs")

installdir=joinpath(BinDeps.depsdir(libxfoil),"usr","lib")
xfoilsrc = joinpath(BinDeps.depsdir(libxfoil),"src","xfoil")
xfoilsrc_cs = joinpath(BinDeps.depsdir(libxfoil),"src","xfoil_cs")

if !isfile(installdir)
    mkpath(installdir)
end

suffix = Sys.is_apple() ? "dylib" : "so"

provides(SimpleBuild,
    (@build_steps begin
        ChangeDirectory(xfoilsrc)
        `make SUFFIX=$suffix`
        `make -j1 install INSTALL_DIR=$installdir SUFFIX=$suffix`
    end),libxfoil, os = :Unix)

provides(SimpleBuild,
    (@build_steps begin
        ChangeDirectory(xfoilsrc_cs)
        `make SUFFIX=$suffix`
        `make -j1 install INSTALL_DIR=$installdir SUFFIX=$suffix`
    end),libxfoil_cs, os = :Unix)

@BinDeps.install Dict(:libxfoil => :libxfoil,:libxfoil_cs => :libxfoil_cs)
