# Xfoil

Xfoil.jl is a stripped down version of XFOIL made for Julia.  It is a fork of
the pyXLIGHT project which is a stripped down version of XFOIL made for Python.
Running XFOIL from Julia is significantly faster than running it from Python.

Note that while the complex step method has been implemented in the pyXLIGHT
project, it has not yet been implemented in this project.

To compile type:

make intel  OR
make gfortran

Then to install into usr/local/lib type:

sudo make install

The default shared library name is libxfoiljl.so.  Note that the extension is
currently set up for Unix (rather than OS).  If using OS simply change the
XFOIL_LIB variable in Makefile and src/Makefile from libxfoiljl.so to
libxfoiljl.dylib.

The Xfoil module contains routines for loading airfoil coordinates, re-paneling,
running viscous analyses, and getting boundary layer data.  See the
Julia documentation for each function for usage.

The XfoilSweep module contains a higher level method for running an angle of
attack sweep in XFOIL.  This method uses various methods to improve convergence.

The XfoilGlobals module allows direct access to the Fortran global variables
through a struct obtained by calling XfoilGlobals.getglobals(). Note that the
parameters are wrapped as Julia arrays, but still refer to the Fortran allocated
memory blocks.  This allows for in-depth modification to default XFOIL
parameters and access to more output variables.  This feature was developed
mostly for development purposes and should be used with care, as bypassing
standard XFOIL processes for modifying variables may introduce unexpected errors.


[![Build Status](https://travis-ci.org/taylormcd/Xfoil.jl.svg?branch=master)](https://travis-ci.org/taylormcd/Xfoil.jl)

[![Coverage Status](https://coveralls.io/repos/taylormcd/Xfoil.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/taylormcd/Xfoil.jl?branch=master)

[![codecov.io](http://codecov.io/github/taylormcd/Xfoil.jl/coverage.svg?branch=master)](http://codecov.io/github/taylormcd/Xfoil.jl?branch=master)
