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

# set airfoil coordinates

set_coordinates(x, y)

@testset "set_coordinates" begin
    for i = 1:length(x)
        @test Xfoil.xfoilglobals.xb[i] == x[i]
        @test Xfoil.xfoilglobals.yb[i] == y[i]
    end
end

# airfoil meshing

pane(npan=140)

@testset "pane" begin
    @test Xfoil.xfoilglobals.n[1]==140
end

# inviscid solution

cli, cmi = solve_alpha(5.0)

@testset "solve_alpha" begin
    @test isapprox(cli, 0.8577755753455931)
    @test isapprox(cmi, -0.06315676405035045)
end

# viscous solution

cl, cdaf, cdp, cm, conv = solve_alpha(5.0, 1e5, iter=100)

@testset "solve_alpha" begin
    @test isapprox(cl, 0.8029209368299962)
    @test isapprox(cdaf, 0.01736835364139813)
    @test isapprox(cdp, 0.006005672701174545)
    @test isapprox(cm, -0.05354124424647357)
    @test conv == true
end

# boundary layer parameters

sbl, xbl, ybl, uebl, dstarbl, thetabl, cfbl = bldump()

@testset "bldump" begin
    @test isapprox(sum(sbl), 186.17483287438512)
    @test isapprox(sum(xbl), 81.11167671425811)
    @test isapprox(sum(ybl), 1.569546936024269)
    @test isapprox(sum(uebl), 60.874302527333)
    @test isapprox(sum(dstarbl), 0.9183534144731654)
    @test isapprox(sum(thetabl), 0.44113906707359407)
    @test isapprox(sum(cfbl), 1.3955890524343826)
end

# pressure coefficients

xcp, vcp = cpdump()

@testset "cpdump" begin
    @test isapprox(sum(xcp), 56.903213143529)
    @test isapprox(sum(vcp), -37.17592874742528)
end

# angle of attack sweep (inviscid)

aoas = -15.0:1.0:15.0

clis, cmis = alpha_sweep(x, y, aoas; npan=140, printdata=false, zeroinit=true)

@testset "alpha_sweep (inviscid)" begin
    # aoa=-5
    @test isapprox(clis[11], -0.3488762723180438)
    @test isapprox(cmis[11], -0.048728057995096524)

    # aoa=5
    @test isapprox(clis[21], 0.8577755753455931)
    @test isapprox(cmis[21], -0.06315676405035045)
end

# angle of attack sweep (viscous)

cls, cds, cdps, cms, convs = alpha_sweep(x, y, aoas, 1e5; iter=100,
    npan=140, percussive_maintenance=true, printdata=false, zeroinit=true,
    clmaxstop=true, clminstop=true)

@testset "alpha_sweep (viscous)" begin
    # aoa=-5
    @test isapprox(cls[11], -0.4848821039554742)
    @test isapprox(cds[11], 0.023137034448629277)
    @test isapprox(cdps[11], 0.009548882633402287)
    @test isapprox(cms[11], -0.026256734420801557)

    # aoa=5
    @test isapprox(cls[21], 0.8029209368275516)
    @test isapprox(cds[21], 0.01736835364145383)
    @test isapprox(cdps[21], 0.0060056727012385205)
    @test isapprox(cms[21], -0.05354124424602892)
end

# set airfoil coordinates (complex)

Xfoil.set_coordinates_cs(x, y)

@testset "set_coordinates_cs" begin
    for i = 1:length(x)
        @test isapprox(Xfoil.xfoilglobals.xb[i], real(Xfoil.xfoilglobals_cs.xb[i]))
        @test isapprox(Xfoil.xfoilglobals.yb[i], real(Xfoil.xfoilglobals_cs.yb[i]))
    end
end

# mesh airfoil (complex)

pane_cs(npan=140)

@testset "pane_cs" begin
    for i = 1:140
        @test isapprox(Xfoil.xfoilglobals.x[i], real(Xfoil.xfoilglobals_cs.x[i]))
        @test isapprox(Xfoil.xfoilglobals.y[i], real(Xfoil.xfoilglobals_cs.y[i]))
    end
end

# inviscid solution (complex)

cli_cs, cmi_cs = solve_alpha(5.0)

@testset "solve_alpha_cs (inviscid)" begin
    @test isapprox(cli, real(cli_cs))
    @test isapprox(cmi, real(cmi_cs))
end

# viscous solution (complex)

cl_cs, cd_cs, cdp_cs, cm_cs, conv_cs = solve_alpha_cs(5.0, 1e5, iter=100)

@testset "solve_alpha_cs (viscous)" begin
    @test isapprox(cl, real(cl_cs))
    @test isapprox(cdaf, real(cd_cs))
    @test isapprox(cdp, real(cdp_cs))
    @test isapprox(cm, real(cm_cs))
    @test conv == conv_cs
end

# boundary layer parameters (complex)

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

# pressure coefficients (complex)

xcp_cs, vcp_cs = cpdump_cs()

@testset "cpdump_cs" begin
    @test isapprox(sum(xcp), sum(real(xcp_cs)))
    @test isapprox(sum(vcp), sum(real(vcp_cs)))
end

# angle of attack sweep (inviscid, complex)

aoas = -15.0:1.0:15.0

clis_cs, cmis_cs = alpha_sweep_cs(x, y, aoas; npan=140, printdata=false, zeroinit=true)

@testset "alpha_sweep_cs (inviscid)" begin
    # aoa=-5
    @test isapprox(clis[11], real(clis_cs[11]))
    @test isapprox(cmis[11], real(cmis_cs[11]))

    # aoa=5
    @test isapprox(clis[21], real(clis_cs[21]))
    @test isapprox(cmis[21], real(cmis_cs[21]))
end

# angle of attack sweep (viscous, complex)

cls_cs, cds_cs, cdps_cs, cms_cs, convs_cs = alpha_sweep_cs(x, y, aoas, 1e5;
    iter=100, npan=140, percussive_maintenance=false, printdata=false,
    zeroinit=true, clmaxstop=true, clminstop=true)

@testset "alpha_sweep_cs (viscous)" begin
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
