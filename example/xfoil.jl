import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  x = Float64[]
  y = Float64[]
  for line in eachline(f)
      x = append!(x,parse(split(chomp(line))[1]))
      y = append!(y,parse(split(chomp(line))[2]))
  end
  Xfoil.setCoordinates(x,y)
end

Xfoil.pane()

angle = linspace(-10.0,10.0,21)
cl = zeros(Float64,length(angle))
cd = zeros(Float64,length(angle))
cdp = zeros(Float64,length(angle))
cm = zeros(Float64,length(angle))
converged = zeros(Bool,length(angle))
h = 1e-6
angleh = angle+h
dClda = zeros(Float64,length(angle))
dCdda = zeros(Float64,length(angle))
dCdpda = zeros(Float64,length(angle))
dCmda = zeros(Float64,length(angle))
convergedh = zeros(Bool,length(angle))

println("----------------- Real Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for i = 1:length(angle)
  cl[i],cd[i],cdp[i],cm[i],converged[i] = Xfoil.solveAlpha(angle[i],100000.0,mach=0.0,iter=100)
  clh,cdh,cdph,cmh,convergedh[i] = Xfoil.solveAlpha(angleh[i],100000.0,mach=0.0,iter=100)
  dClda[i] = (clh-cl[i])/h
  dCdda[i] = (cdh-cd[i])/h
  dCdpda[i] = (cdph-cdp[i])/h
  dCmda[i] = (cmh-cm[i])/h
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",angle[i],cl[i],cd[i],cm[i],converged[i])
end

# Finite difference results
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(angleh)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",angle[i],dClda[i],dCdda[i],dCmda[i],convergedh[i] && converged[i])
end
