# Xfoil

Xfoil.jl is a stripped down version of XFOIL made for Julia.  It is a fork of
the pyXLIGHT project which is a stripped down version of XFOIL made for Python.

Similar to pyXLIGHT, complex step has been implemented in this project.

To clone the repo:
```julia
Pkg.clone(...)
```

To build run the XFOIL library run the deps/build.jl file:

`julia deps/build.jl`

```julia
Pkg.build("Xfoil")
```

To run tests

```julia
Pkg.test("Xfoil")
```

To rebuild, it may be necessary to delete the installed library located at
deps/usr/lib

`rm deps/usr/lib`

The Xfoil module contains routines for loading airfoil coordinates, re-paneling,
running viscous analyses, and getting boundary layer data.  See the
Julia documentation for each function for usage.

It also contains higher level methods for running an angle of
attack sweep in XFOIL.  This method uses various methods to improve convergence.

This module allows direct access to the Fortran global variables
through a struct obtained by calling `get_globals()`. Note that the
parameters are wrapped as Julia arrays, but still refer to the Fortran allocated
memory blocks.  This allows for in-depth modification to default XFOIL
parameters and access to more output variables.  This feature was developed
mostly for development purposes and should be used with care, as bypassing
standard XFOIL processes for modifying variables may introduce unexpected errors.
