# Library

```@contents
Pages = ["library.md"]
Depth = 3
```

## Public API

### Inputting Airfoil Coordinates

```@docs
set_coordinates
pane
```

### Viscous Airfoil Analysis
```@docs
solve_alpha
alpha_sweep
```

### Extracting Boundary Layer Data

```@docs
get_xsep
bldump
```

### Complex Step Version of XFOIL

The complex step version of each function is denoted by appending `_cs` to each function name.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must append `_cs` to all function names.

The following functions are available for use with the complex step version of XFOIL:

```@docs
set_coordinates_cs
pane_cs
solve_alpha_cs
alpha_sweep_cs
get_xsep_cs
bldump_cs
```

## Private API

```@docs
Xfoil.XfoilGlobals
Xfoil.get_globals
Xfoil.get_globals_cs
Xfoil.do_percussive_maintenance
Xfoil.do_percussive_maintenance_cs
```

## Index

```@index
```
