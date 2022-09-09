# Xfoil.jl

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://flow.byu.edu/Xfoil.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://flow.byu.edu/Xfoil.jl/dev)
![](https://github.com/byuflowlab/Xfoil.jl/workflows/Run%20tests/badge.svg)

*Julia Wrapper for the 2D airfoil panel code XFOIL*

Author: Taylor McDonnell

**Xfoil.jl** is a Julia wrapper for a Mark Drela's 2D airfoil panel code, [XFOIL](https://web.mit.edu/drela/Public/web/xfoil/), with the GUI features removed.  

This package was originally a fork of [pyXLIGHT](https://github.com/mdolab/pyXLIGHT) (which has since been renamed to [CMPLXFOIL](https://github.com/mdolab/CMPLXFOIL)), but has since undergone some development to introduce new features.  The version of XFOIL that this package wraps is that of the [xfoil_light](https://github.com/byuflowlab/xfoil_light) project.

## Package Features

 - Inputs airfoils and flow parameters directly into XFOIL, rather than through files.
 - Redistributes panels over the surface of an airfoil using XFOIL's PANE command.
 - Computes inviscid and viscous airfoil coefficients using XFOIL.
 - Can return pressure coefficients computed by XFOIL for inviscid and viscous analyses. 
 - Can return boundary layer parameters computed by XFOIL for viscous analyses.
 - Provides full access to the internal state variables of XFOIL.
 - Provides a complex step enabled version of XFOIL for sensitivity analysis.

## Sensitivity Analysis

This code actually wraps two versions of Mark Drela's XFOIL code, one of which may be used to compute sensitivities using the complex step method.  The complex step enabled version of XFOIL may be called by appending `_cs` to the end of each functions name.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must use the functions that end with `_cs`.

## Installation

Enter the Julia package manager by typing `]` and then run the following:

```julia
pkg> add Xfoil
```

## Usage

See the examples in the [documentation](https://flow.byu.edu/Xfoil.jl/dev).

## Development

Pull requests for this package or its companion package [xfoil_light](https://github.com/byuflowlab/xfoil_light) are always welcome.
