import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  global x = Array{Complex128,1}(0)
  global y = Array{Complex128,1}(0)
  for line in eachline(f)
    x = append!(x,parse(split(chomp(line))[1]))
    y = append!(y,parse(split(chomp(line))[2]))
  end
end

angle = collect(linspace(-15,20,61)*pi/180+0.0im)

cl,cd,cdp,cm,converged = Xfoil.xfoilsweep_cs(x,y,angle,100000.0+0.0im,iter=100,printdata=true,clminstop=true,clmaxstop=true);
