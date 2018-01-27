import Xfoil
using Base.Test

folder,_ = splitdir(@__FILE__)
airfoil_file = joinpath(folder,"..","example","naca2412.dat")
open(airfoil_file,"r") do f
  global x = Array{Float64,1}(0)
  global y = Array{Float64,1}(0)
  for line in eachline(f)
    x = append!(x,parse(split(chomp(line))[1]))
    y = append!(y,parse(split(chomp(line))[2]))
  end
end

xfoilglobals = Xfoil.xfoilglobals

# setCoordinates test
Xfoil.setCoordinates(x,y)
for i = 1:length(x)
  @test xfoilglobals.xb[i]==x[i]
  @test xfoilglobals.yb[i]==y[i]
end

# pane test
Xfoil.pane(npan=140)
@test xfoilglobals.n[1]==140

# solveAlpha test
cl,cd,cdp,cm,conv = Xfoil.solveAlpha(5.0,1e5,iter=100)
@test isapprox(cl,0.8029209409078045)
@test isapprox(cd,0.017368353583814947)
@test isapprox(cdp,0.0060056723724223405)
@test isapprox(cm,-0.053541244481716696)
@test conv == true

# bldump test
sbl,xbl,ybl,uebl,dstarbl,thetabl,cfbl =Xfoil.bldump()
@test isapprox(sum(sbl),186.17483029646593)
@test isapprox(sum(xbl),81.11167420760269)
@test isapprox(sum(ybl),1.5695474130166154)
@test isapprox(sum(uebl),60.87432109391924)
@test isapprox(sum(dstarbl),0.9183533699318299)
@test isapprox(sum(thetabl),0.44113905597135494)
@test isapprox(sum(cfbl),1.3955896003688344)

# xfoilsweep test
aoas = collect(-15.0:1.0:15.0)
cls,cds,cdps,cms,convs =Xfoil.xfoilsweep(x,y,aoas,1e5;iter=100,npan=140,
  percussive_maintenance=true,printdata=false,zeroinit=true,clmaxstop=true,clminstop=true)
# test clmaxstop and clminstop
@test count(convs) == 25
# aoa=-5
@test isapprox(cls[11],-0.48488210527938785)
@test isapprox(cds[11],0.023137034265852948)
@test isapprox(cdps[11],0.009548882396644153)
@test isapprox(cms[11],-0.026256734143567897)
# aoa=5
@test isapprox(cls[21],0.802920940907813)
@test isapprox(cds[21],0.01736835358381533)
@test isapprox(cdps[21],0.006005672372422114)
@test isapprox(cms[21],-0.053541244481718306)

# Complex Step Functions
xfoilglobals_cs = Xfoil.xfoilglobals_cs

# note that only very small imaginary numbers should be used
# some formulas are not general complex formulas

x_cs = convert(Array{Complex128,1},x)+1e-20
y_cs = convert(Array{Complex128,1},y)+1e-20

# setCoordinates_cs test
Xfoil.setCoordinates_cs(x_cs,y_cs)
for i = 1:length(xfoilglobals.xb)
  @test isapprox(xfoilglobals.xb[i],real(xfoilglobals_cs.xb[i]))
  @test isapprox(xfoilglobals.yb[i],real(xfoilglobals_cs.yb[i]))
end

# pane_cs test
Xfoil.pane_cs(npan=140)
for i = 1:140
  @test isapprox(xfoilglobals.x[i],real(xfoilglobals_cs.x[i]))
  @test isapprox(xfoilglobals.y[i],real(xfoilglobals_cs.y[i]))
end

# solveAlpha_cs test
cl_cs,cd_cs,cdp_cs,cm_cs,conv_cs = Xfoil.solveAlpha_cs(complex(5.0),complex(1e5),iter=100)
@test isapprox(cl,real(cl_cs))
@test isapprox(cd,real(cd_cs))
@test isapprox(cdp,real(cdp_cs))
@test isapprox(cm,real(cm_cs))
@test conv == conv_cs

# bldump_cs test
sbl_cs,xbl_cs,ybl_cs,uebl_cs,dstarbl_cs,thetabl_cs,cfbl_cs =Xfoil.bldump_cs()
@test isapprox(sum(sbl),sum(real(sbl_cs)))
@test isapprox(sum(xbl),sum(real(xbl_cs)))
@test isapprox(sum(ybl),sum(real(ybl_cs)))
@test isapprox(sum(uebl),sum(real(uebl_cs)))
@test isapprox(sum(dstarbl),sum(real(dstarbl_cs)))
@test isapprox(sum(thetabl),sum(real(thetabl_cs)))
@test isapprox(sum(cfbl),sum(real(cfbl_cs)))

# xfoilsweep_cs test
aoas_cs = convert(Array{Complex128,1},aoas)
cls_cs,cds_cs,cdps_cs,cms_cs,convs_cs =Xfoil.xfoilsweep_cs(x_cs,y_cs,aoas_cs,complex(1e5);iter=100,
  npan=140,percussive_maintenance=false,printdata=false,zeroinit=true,clmaxstop=true,clminstop=true)
# test clmaxstop and clminstop
@test count(convs_cs) == 25
# aoa=-5
@test isapprox(cls[11],real(cls_cs[11]))
@test isapprox(cds[11],real(cds_cs[11]))
@test isapprox(cdps[11],real(cdps_cs[11]))
@test isapprox(cms[11],real(cms_cs[11]))
# aoa=5
@test isapprox(cls[21],real(cls_cs[21]))
@test isapprox(cds[21],real(cds_cs[21]))
@test isapprox(cdps[21],real(cdps_cs[21]))
@test isapprox(cms[21],real(cms_cs[21]))
