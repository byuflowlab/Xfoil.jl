# Xfoil.jl

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://flow.byu.edu/Xfoil.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://flow.byu.edu/Xfoil.jl/dev)
![](https://github.com/byuflowlab/Xfoil.jl/workflows/Run%20tests/badge.svg)

*Julia Wrapper for a Simplified Version of XFOIL*

Author: Taylor McDonnell

**Xfoil.jl** is a Julia wrapper for a simplified version of Mark Drela's 2D airfoil panel code, [XFOIL](https://web.mit.edu/drela/Public/web/xfoil/).  

This package was originally a fork of the [pyXLIGHT](https://github.com/mdolab/pyXLIGHT), but has since undergone some development to introduce new features.  The version of XFOIL that this package wraps is that of the [xfoil_light](https://github.com/byuflowlab/xfoil_light) project.

## Package Features

 - Can handle any airfoil XFOIL can handle
 - Is able to redistribute panels over the surface of an airfoil using XFOIL's PANE command.
 - Able to perform viscous airfoil analysis using XFOIL.
 - Complex step method can be used to obtain gradients.

## Obtaining Gradients using the Complex Step Method

This code actually wraps two versions of Mark Drela's XFOIL code, one of which may be used to compute gradients using the complex step method.  The complex step enabled version of XFOIL may be called through using functions that end with `_cs`.  Note that there is no interaction between the two versions of XFOIL wrapped by this package, so if you wish to use the complex step version of the code you must use the functions that end with `_cs`.

## Installation

Enter the package manager by typing `]` and then run the following:

```julia
pkg> add https://github.com/byuflowlab/Xfoil.jl
```

## Usage

See the [examples](@ref Examples)

## Development

Pull requests for this package or its companion package [xfoil_light](https://github.com/byuflowlab/xfoil_light) are always welcome.
