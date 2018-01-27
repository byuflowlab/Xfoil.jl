import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  global x = Float64[]
  global y = Float64[]
  for line in eachline(f)
    x = append!(x,parse(split(chomp(line))[1]))
    y = append!(y,parse(split(chomp(line))[2]))
  end
end

angle = collect(linspace(-15,20,61))

cl,cd,cdp,cm,converged = Xfoil.xfoilsweep(x,y,collect(angle),100000.0,iter=100,printdata=true,clminstop=true,clmaxstop=true);
