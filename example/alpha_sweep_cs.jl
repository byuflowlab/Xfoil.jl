import Xfoil
using Printf

airfoil_file = "naca2412.dat"

open(airfoil_file,"r") do f
    global x = Array{ComplexF64,1}(undef, 0)
    global y = Array{ComplexF64,1}(undef, 0)
    for line in eachline(f)
        x = append!(x,Meta.parse(split(chomp(line))[1]))
        y = append!(y,Meta.parse(split(chomp(line))[2]))
    end
end

h = 1e-30im
angle = collect(range(-10,stop=10,length=21)*pi/180).+h

cl,cdd,cdp,cm,converged = Xfoil.alpha_sweep_cs(x, y, angle*180.0/pi,
    100000.0+0.0im, iter=100, printdata=true, clminstop=true, clmaxstop=true)

println("----------------- Complex Results ----------------")
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(angle)
    @printf("%8f\t%8f\t%8f\t%8f\t%d\n",real(angle[i])*180/pi,imag(cl[i])/imag(h),imag(cdd[i])/imag(h),imag(cm[i])/imag(h),converged[i])
end
