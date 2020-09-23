# Test script to test jlXLIGHT
#filepath,_ = splitdir(@__FILE__)
#modulepath = joinpath("../julia")
#push!(LOAD_PATH,modulepath)
import Xfoil
using Printf

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  global x = ComplexF64[]
  global y = ComplexF64[]
  for line in eachline(f)
      x = append!(x,Meta.parse(split(chomp(line))[1]))
      y = append!(y,Meta.parse(split(chomp(line))[2]))
  end
  Xfoil.set_coordinates_cs(x,y)
end

Xfoil.pane_cs()

h = 1e-30im
ang = collect(range(-10.0,stop = 10.0, length=21).+h)
cl = zeros(ComplexF64,length(ang))
cdd = zeros(ComplexF64,length(ang))
cdp = zeros(ComplexF64,length(ang))
cm = zeros(ComplexF64,length(ang))
converged = zeros(Bool,length(ang))

println("----------------- Complex Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for i = 1:length(ang)
  Xfoil.pane_cs()
  cl[i],cdd[i],cdp[i],cm[i],converged[i] = Xfoil.solve_alpha_cs(ang[i], 1e5, mach=0.0, iter=50)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(ang[i]),real(cl[i]),real(cdd[i]),real(cm[i]),converged[i])
end

println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(ang)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(ang[i]),imag(cl[i])/imag(h)*180/pi,imag(cdd[i])/imag(h)*180/pi,imag(cm[i])/imag(h)*180/pi,converged[i])
end
