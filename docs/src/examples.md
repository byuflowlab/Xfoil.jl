# Examples

These examples show how to use Xfoil.jl.

## Manual Angle of Attack Sweep

This first example shows how to manually perform an angle of attack sweep.

```@example
using Xfoil, Printf

# read airfoil into XFOIL
open("naca2412.dat", "r") do f
    x = Float64[]
    y = Float64[]
    for line in eachline(f)
        entries = split(chomp(line))
        push!(x, parse(Float64, entries[1]))
        push!(y, parse(Float64, entries[2]))
    end
    Xfoil.set_coordinates(x,y)
end

# repanel using XFOIL's `PANE` command
Xfoil.pane()

# set operating conditions
alpha = -10:1:10
re = 1e5
mach = 0.0

# initialize outputs
n_a = length(alpha)
c_l = zeros(n_a)
c_d = zeros(n_a)
c_dp = zeros(n_a)
c_m = zeros(n_a)
converged = zeros(Bool, n_a)
for i = 1:n_a
    c_l[i], c_d[i], c_dp[i], c_m[i], converged[i] = Xfoil.solve_alpha(alpha[i], re; mach, iter=100)
end

# print results
println("Angle\t\tCl\t\tCd\t\tCm\t\tConverged")
for i = 1:n_a
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",alpha[i],c_l[i],c_d[i],c_m[i],converged[i])
end

nothing #hide
```

Suppose we want to find the derivative of `c_l`, `c_d`, and `c_m` with respect to `alpha` at the same angles of attack.  One approach to calculate these derivatives would be to use the finite difference method.

```@example
using Xfoil, Printf

# read airfoil into XFOIL
open("naca2412.dat", "r") do f
    x = Float64[]
    y = Float64[]
    for line in eachline(f)
        entries = split(chomp(line))
        push!(x, parse(Float64, entries[1]))
        push!(y, parse(Float64, entries[2]))
    end
    Xfoil.set_coordinates(x,y)
end

# repanel using XFOIL's `PANE` command
Xfoil.pane()

# set operating conditions
alpha = -10:1:10
re = 1e5
mach = 0.0

# set step size
h = 1e-6

# initialize outputs
n_a = length(alpha)
c_l_a = zeros(n_a)
c_d_a = zeros(n_a)
c_dp_a = zeros(n_a)
c_m_a = zeros(n_a)
converged = zeros(Bool, n_a)

for i = 1:n_a
    c_l1, c_d1, c_dp1, c_m1, converged[i] = Xfoil.solve_alpha(alpha[i], re; mach, iter=100, reinit=true)
    c_l2, c_d2, c_dp2, c_m2, converged[i] = Xfoil.solve_alpha(alpha[i]+h, re; mach, iter=100, reinit=true)
    c_l_a[i] = (c_l2 - c_l1)/h * 180/pi
    c_d_a[i] = (c_d2 - c_d1)/h * 180/pi
    c_m_a[i] = (c_m2 - c_m1)/h * 180/pi
end

# print results
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:n_a
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",alpha[i],c_l_a[i],c_d_a[i],c_m_a[i],converged[i])
end

nothing #hide
```

A better approach might be to use the complex step method.  To use this approach, however, 
we need to reinitialize the flow solution for each angle of attack by setting `reinit=true`. 
This ensures that the imaginary portion of variables from previous iterations does not affect
the solution for the current iteration.

```@example
using Xfoil, Printf

# read airfoil into XFOIL
open("naca2412.dat", "r") do f
    x = Float64[]
    y = Float64[]
    for line in eachline(f)
        entries = split(chomp(line))
        push!(x, parse(Float64, entries[1]))
        push!(y, parse(Float64, entries[2]))
    end
    Xfoil.set_coordinates_cs(x,y)
end

# repanel using XFOIL's `PANE` command
Xfoil.pane_cs()

# set operating conditions
alpha = -10:1:10
re = 1e5
mach = 0.0

# set step size
h = 1e-10im

# initialize outputs
n_a = length(alpha)
c_l_a = zeros(n_a)
c_d_a = zeros(n_a)
c_dp_a = zeros(n_a)
c_m_a = zeros(n_a)
converged = zeros(Bool, n_a)

for i = 1:n_a
    c_l, c_d, c_dp, c_m, converged[i] = Xfoil.solve_alpha_cs(alpha[i]+h, re; mach, iter=100, reinit=true)
    c_l_a[i] = imag(c_l)/imag(h) * 180/pi
    c_d_a[i] = imag(c_d)/imag(h) * 180/pi
    c_m_a[i] = imag(c_m)/imag(h) * 180/pi
end

# print results
println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:n_a
  @printf("%8f\t%8f\t%8f\t%8f\t%d\n",alpha[i],c_l_a[i],c_d_a[i],c_m_a[i],converged[i])
end

nothing #hide
```

## Automatic Angle of Attack Sweep

For performing angle of attack sweeps, the function [`alpha_sweep`](@ref) may also be used.

```julia
using Xfoil, Printf

# extract geometry
x = Float64[]
y = Float64[]

f = open("naca2412.dat", "r")

for line in eachline(f)
    entries = split(chomp(line))
    push!(x, parse(Float64, entries[1]))
    push!(y, parse(Float64, entries[2]))
end

close(f)

# set operating conditions
alpha = -10:1:10
re = 1e5

c_l, c_d, c_dp, c_m, converged = Xfoil.alpha_sweep(x, y, alpha, re, iter=100, zeroinit=false, printdata=true, reinit=true)

nothing #hide
```

A version of [`alpha_sweep`](@ref) has also been implemented for use with the complex step version of XFOIL.

```julia
using Xfoil, Printf

# extract geometry
x = Float64[]
y = Float64[]

f = open("naca2412.dat", "r")

for line in eachline(f)
    entries = split(chomp(line))
    push!(x, parse(Float64, entries[1]))
    push!(y, parse(Float64, entries[2]))
end

close(f)

# set operating conditions
alpha = -10:1:10
re = 1e5
mach = 0.0

# set step size
h = 1e-20im

c_l, c_d, c_dp, c_m, converged = Xfoil.alpha_sweep_cs(x, y, alpha .+ h,
    re, mach=mach, iter=100, zeroinit=false, printdata=true, reinit=true)

println("Angle\t\tdClda\t\tdCdda\t\tdCmda\t\tConverged")
for i = 1:length(alpha)
    @printf("%8f\t%8f\t%8f\t%8f\t%d\n", alpha[i], imag(c_l[i])/imag(h)*180/pi, imag(c_d[i])/imag(h)*180/pi, imag(c_m[i])/imag(h)*180/pi, converged[i])
end

nothing #hide
```
