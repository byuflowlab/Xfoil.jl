import Xfoil
using Printf

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  x = Float64[]
  y = Float64[]
  for line in eachline(f)
      x = append!(x,Meta.parse(split(chomp(line))[1]))
      y = append!(y,Meta.parse(split(chomp(line))[2]))
  end
  Xfoil.setCoordinates(x,y)
end

Xfoil.pane()

ang = range(-10.0, stop = 10.0, length = 21)
cl = zeros(Float64,length(ang))
cdd = zeros(Float64,length(ang))
cdp = zeros(Float64,length(ang))
cm = zeros(Float64,length(ang))
converged = zeros(Bool,length(ang))
h = 1e-6
angleh = ang .+ h
dClda = zeros(Float64,length(ang))
dCdda = zeros(Float64,length(ang))
dCdpda = zeros(Float64,length(ang))
dCmda = zeros(Float64,length(ang))
convergedh = zeros(Bool,length(ang))

println("----------------- Real Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for i = 1:length(ang)
  cl[i],cdd[i],cdp[i],cm[i],converged[i] = Xfoil.solveAlpha(ang[i],100000.0,mach=0.0,iter=100)
  clh,cdh,cdph,cmh,convergedh[i] = Xfoil.solveAlpha(angleh[i],100000.0,mach=0.0,iter=100)
  dClda[i] = (clh-cl[i])/h
  dCdda[i] = (cdh-cdd[i])/h
  dCdpda[i] = (cdph-cdp[i])/h
  dCmda[i] = (cmh-cm[i])/h
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",ang[i],cl[i],cdd[i],cm[i],converged[i])
end

# Finite difference results
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(angleh)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",ang[i],dClda[i],dCdda[i],dCmda[i],convergedh[i] && converged[i])
end
