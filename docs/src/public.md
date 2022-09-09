# Public API

### Setting Airfoil Coordinates

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

### Angle of Attack Sweep

```@docs
alpha_sweep
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

The complex step version of each function is denoted by appending `_cs` to each function name.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must append `_cs` to all function names.

