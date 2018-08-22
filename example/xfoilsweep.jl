import Xfoil

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
  global x = Float64[]
  global y = Float64[]
  for line in eachline(f)
    x = append!(x,Meta.parse(split(chomp(line))[1]))
    y = append!(y,Meta.parse(split(chomp(line))[2]))
  end
end

ang = collect(range(-15, stop=20,length=71))

cl, cdd, cdp, cm, converged = Xfoil.xfoilsweep(x, y, ang, 100000.0, iter=100,
    printdata=true, clminstop=false, clmaxstop=false);
