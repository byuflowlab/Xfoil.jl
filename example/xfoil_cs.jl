# Test script to test jlXLIGHT
#filepath,_ = splitdir(@__FILE__)
#modulepath = joinpath("../julia")
#push!(LOAD_PATH,modulepath)
import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  global x = Complex128[]
  global y = Complex128[]
  for line in eachline(f)
      x = append!(x,parse(split(chomp(line))[1]))
      y = append!(y,parse(split(chomp(line))[2]))
  end
  Xfoil.setCoordinates_cs(x,y)
end

Xfoil.pane()

h = 1e-30im
angle = collect(linspace(-10.0,10.0,21)+h)
cl = zeros(Complex128,length(angle))
cd = zeros(Complex128,length(angle))
cdp = zeros(Complex128,length(angle))
cm = zeros(Complex128,length(angle))
converged = zeros(Bool,length(angle))

println("----------------- Complex Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for i = 1:length(angle)
  Xfoil.setCoordinates_cs(x,y)
  cl[i],cd[i],cdp[i],cm[i],converged[i] = Xfoil.solveAlpha_cs(angle[i],100000.0+0.0im,mach=0.0+0.0im,iter=50)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(angle[i]),real(cl[i]),real(cd[i]),real(cm[i]),converged[i])
end

println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(angle)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(angle[i]),imag(cl[i])/imag(h),imag(cd[i])/imag(h),imag(cm[i])/imag(h),converged[i])
end
