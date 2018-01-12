# Test script to test jlXLIGHT
#filepath,_ = splitdir(@__FILE__)
#modulepath = joinpath("../julia")
#push!(LOAD_PATH,modulepath)
import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  x = []
  y = []
  for line in eachline(f)
      x = append!(x,parse(split(chomp(line))[1]))
      y = append!(y,parse(split(chomp(line))[2]))
  end
  Xfoil.setCoordinates(x,y)
end

Xfoil.pane()

println("----------------- Real Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for angle in linspace(-10,10,21)
  cl,cd,cdp,cm,converged = Xfoil.solveAlpha(angle,re=100000,mach=0.0,iter=100)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",angle,cl,cd,cm,converged)
end
