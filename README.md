# IsURL

[![Build Status](https://travis-ci.com/zdroid/IsURL.jl.svg?branch=master)](https://travis-ci.com/zdroid/IsURL.jl)
[![Coverage](https://codecov.io/gh/zdroid/IsURL.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/zdroid/IsURL.jl)

Checks if the given string is an absolute URL.

## Install

```julia
]add IsURL
```

## Examples

```julia
using IsURL

isurl("https://julialang.org") == true
isurl("mailto:someone@example.com") == true
isurl("/foo/bar") == false

isrelativeurl("../path/to/directory") == true
isrelativeurl("./__file__") == true
isrelativeurl("foo:bar") == false
```
