using Xfoil, Test

# read airfoil data
f = open("naca2412.dat", "r")

x = Float64[]
y = Float64[]
for line in eachline(f)
    push!(x, Meta.parse(split(chomp(line))[1]))
    push!(y, Meta.parse(split(chomp(line))[2]))
end

close(f)

# begin tests

set_coordinates(x, y)

@testset "set_coordinates" begin
    for i = 1:length(x)
        @test Xfoil.xfoilglobals.xb[i] == x[i]
        @test Xfoil.xfoilglobals.yb[i] == y[i]
    end
end

pane(npan=140)

@testset "pane" begin
    @test Xfoil.xfoilglobals.n[1]==140
end

cl, cdaf, cdp, cm, conv = solve_alpha(5.0, 1e5, iter=100)

@testset "solve_alpha" begin
    @test isapprox(cl, 0.8029209409078045)
    @test isapprox(cdaf, 0.017368353583814947)
    @test isapprox(cdp, 0.0060056723724223405)
    @test isapprox(cm, -0.053541244481716696)
    @test conv == true
end

sbl, xbl, ybl, uebl, dstarbl, thetabl, cfbl = bldump()

@testset "bldump" begin
    @test isapprox(sum(sbl), 186.17483029646593)
    @test isapprox(sum(xbl), 81.11167420760269)
    @test isapprox(sum(ybl), 1.5695474130166154)
    @test isapprox(sum(uebl), 60.87432109391924)
    @test isapprox(sum(dstarbl), 0.9183533699318299)
    @test isapprox(sum(thetabl), 0.44113905597135494)
    @test isapprox(sum(cfbl), 1.3955896003688344)
end

aoas = -15.0:1.0:15.0

cls, cds, cdps, cms, convs = alpha_sweep(x, y, aoas, 1e5; iter=100,
    npan=140, percussive_maintenance=true, printdata=false, zeroinit=true,
    clmaxstop=true, clminstop=true)

@testset "alpha_sweep" begin
    # aoa=-5
    @test isapprox(cls[11], -0.48488210527938785)
    @test isapprox(cds[11], 0.023137034265852948)
    @test isapprox(cdps[11], 0.009548882396644153)
    @test isapprox(cms[11], -0.026256734143567897)

    # aoa=5
    @test isapprox(cls[21], 0.802920940907813)
    @test isapprox(cds[21], 0.01736835358381533)
    @test isapprox(cdps[21], 0.006005672372422114)
    @test isapprox(cms[21], -0.053541244481718306)
end

Xfoil.set_coordinates_cs(x, y)

@testset "set_coordinates_cs" begin
    for i = 1:length(x)
        @test isapprox(Xfoil.xfoilglobals.xb[i], real(Xfoil.xfoilglobals_cs.xb[i]))
        @test isapprox(Xfoil.xfoilglobals.yb[i], real(Xfoil.xfoilglobals_cs.yb[i]))
    end
end

pane_cs(npan=140)

@testset "pane_cs" begin
    for i = 1:140
        @test isapprox(Xfoil.xfoilglobals.x[i], real(Xfoil.xfoilglobals_cs.x[i]))
        @test isapprox(Xfoil.xfoilglobals.y[i], real(Xfoil.xfoilglobals_cs.y[i]))
    end
end

cl_cs, cd_cs, cdp_cs, cm_cs, conv_cs = solve_alpha_cs(5.0, 1e5, iter=100)

@testset "solve_alpha_cs" begin
    @test isapprox(cl, real(cl_cs))
    @test isapprox(cdaf, real(cd_cs))
    @test isapprox(cdp, real(cdp_cs))
    @test isapprox(cm, real(cm_cs))
    @test conv == conv_cs
end

sbl_cs, xbl_cs, ybl_cs, uebl_cs, dstarbl_cs, thetabl_cs, cfbl_cs = bldump_cs()

@testset "bldump_cs" begin
    @test isapprox(sum(sbl), sum(real(sbl_cs)))
    @test isapprox(sum(xbl), sum(real(xbl_cs)))
    @test isapprox(sum(ybl), sum(real(ybl_cs)))
    @test isapprox(sum(uebl), sum(real(uebl_cs)))
    @test isapprox(sum(dstarbl), sum(real(dstarbl_cs)))
    @test isapprox(sum(thetabl), sum(real(thetabl_cs)))
    @test isapprox(sum(cfbl), sum(real(cfbl_cs)))
end

cls_cs, cds_cs, cdps_cs, cms_cs, convs_cs = alpha_sweep_cs(x, y, aoas, 1e5;
    iter=100, npan=140, percussive_maintenance=false, printdata=false,
    zeroinit=true, clmaxstop=true, clminstop=true)

@testset "alpha_sweep_cs" begin
    # aoa=-5
    @test isapprox(cls[11], real(cls_cs[11]))
    @test isapprox(cds[11], real(cds_cs[11]))
    @test isapprox(cdps[11], real(cdps_cs[11]))
    @test isapprox(cms[11], real(cms_cs[11]))

    # aoa=5
    @test isapprox(cls[21], real(cls_cs[21]))
    @test isapprox(cds[21], real(cds_cs[21]))
    @test isapprox(cdps[21], real(cdps_cs[21]))
    @test isapprox(cms[21], real(cms_cs[21]))
end
