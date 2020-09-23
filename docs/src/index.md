# Xfoil.jl

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://flow.byu.edu/Xfoil.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://flow.byu.edu/Xfoil.jl/dev)
![](https://github.com/byuflowlab/Xfoil.jl/workflows/Run%20tests/badge.svg)

*Julia Wrapper for a Simplified Version of XFOIL*

Author: Taylor McDonnell

**Xfoil.jl** is a Julia wrapper for a simplified version of Mark Drela's 2D airfoil panel code, [XFOIL](https://web.mit.edu/drela/Public/web/xfoil/).  

At this point in time, the main functionality that this code supports is viscous airfoil analysis, though some convenience functions have been developed to simplify the process, especially when determining airfoil performance over a range of angles of attack.

This code also wraps a version of Mark Drela's XFOIL code which may be used to compute gradients using the complex step method.  The complex step version of each function is denoted by appending `_cs` to the function name.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must append `_cs` to all function names.

This package was originally a fork of the [pyXLIGHT](https://github.com/mdolab/pyXLIGHT), but has since undergone some development to introduce new features.

## Installation

Enter the package manager by typing `]` and then run the following:

```julia
pkg> add https://github.com/byuflowlab/Xfoil.jl
```

## Usage

See the [examples](@ref Examples)
