# IsURL

[![Build Status](https://travis-ci.com/zdroid/IsURL.jl.svg?branch=master)](https://travis-ci.com/zdroid/IsURL.jl)

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
```
