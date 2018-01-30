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

h = 1e-30im
angle = collect(linspace(-15,20,61)+h)

cl,cd,cdp,cm,converged = Xfoil.xfoilsweep_cs(x,y,angle,100000.0+0.0im,iter=100,printdata=true,clminstop=true,clmaxstop=true);

println("----------------- Complex Results ----------------")
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(angle)
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(angle[i]),imag(cl[i])/imag(h),imag(cd[i])/imag(h),imag(cm[i])/imag(h),converged[i])
end
