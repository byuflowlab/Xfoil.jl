# [Public API](@id public)

### Loading Airfoil Geometry

```@docs
set_coordinates
```

### Repaneling Airfoils

```@docs
pane
```

### Inviscid Airfoil Analysis
```@docs
solve_alpha(alpha; kwargs...)
```

### Viscous Airfoil Analysis

```@docs
solve_alpha(alpha, re; kwargs...)
```

### Inviscid Angle of Attack Sweep

```@docs
alpha_sweep(x, y, alpha; kwargs...)
```

### Viscous Angle of Attack Sweep

```@docs
alpha_sweep(x, y, alpha, re; kwargs...)
```

### Separation Point

```@docs
get_xsep
```

### Boundary Layer Variables

```@docs
bldump
```

### Pressure Coefficients

```@docs
cpdump
```

### Complex Step Version of XFOIL

The complex step version of each function is denoted by appending `_cs` to each function name.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must append `_cs` to all function names:

### Loading Airfoil Geometry

```@docs
set_coordinates_cs
```

### Repaneling Airfoils

```@docs
pane_cs
```

### Inviscid Airfoil Analysis

```@docs
solve_alpha_cs(alpha; kwargs...)
```

### Viscous Airfoil Analysis

```@docs
solve_alpha_cs(alpha, re; kwargs...)
```

### Inviscid Angle of Attack Sweep

```@docs
alpha_sweep_cs(x, y, alpha; kwargs...)
```

### Viscous Angle of Attack Sweep

```@docs
alpha_sweep_cs(x, y, alpha, re; kwargs...)
```

### Separation Point

```@docs
get_xsep_cs
```

### Boundary Layer Variables

```@docs
bldump_cs
```

### Pressure Coefficients

```@docs
cpdump_cs
```