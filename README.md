# IsURL

[![Build Status](https://github.com/zdroid/IsURL.jl/workflows/CI/badge.svg)](https://github.com/zdroid/IsURL.jl/actions)
[![Coverage](https://codecov.io/gh/zdroid/IsURL.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/zdroid/IsURL.jl)

Checks if the given string is an absolute URL.

## Install

```julia
]add IsURL
```

## Examples

```julia
julia> using IsURL

julia> isurl("https://julialang.org")
true

julia> isurl("mailto:someone@example.com")
true

julia> isurl("/foo/bar")
false

julia> isrelativeurl("../path/to/directory")
true

julia> isrelativeurl("./__file__")
true

julia> isrelativeurl("foo:bar")
false
```
