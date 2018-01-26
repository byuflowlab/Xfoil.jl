# Test script to test jlXLIGHT
#filepath,_ = splitdir(@__FILE__)
#modulepath = joinpath("../julia")
#push!(LOAD_PATH,modulepath)
import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  x = Complex128[]
  y = Complex128[]
  for line in eachline(f)
      x = append!(x,parse(split(chomp(line))[1]))
      y = append!(y,parse(split(chomp(line))[2]))
  end
  Xfoil.setCoordinates_cs(x,y)
end

Xfoil.pane_cs()

println("----------------- Real Results ----------------")
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for angle in linspace(-10.0,10.0,21)
  cl,cd,cdp,cm,converged = Xfoil.solveAlpha_cs(angle+0.0im,re=100000.0+0.0im,mach=0.0+0.0im,iter=100)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(angle),real(cl),real(cd),real(cm),converged)
end
