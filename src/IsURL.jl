module IsURL

export isurl, isrelativeurl

# Source: https://github.com/sindresorhus/is-absolute-url (MIT license)
windowsregex = r"^[a-zA-Z]:[\\]"
urlregex = r"^[a-zA-Z][a-zA-Z\d+\-.]*:"

"""
    isurl(str)

Checks if the given string is an absolute URL.

# Examples
```julia-repl
julia> isurl("https://julialang.org")
true

julia> isurl("mailto:someone@example.com")
true

julia> isurl("/foo/bar")
false
```
"""
function isurl(str::AbstractString)
    return !occursin(windowsregex, str) && occursin(urlregex, str)
end

"""
    isrelativeurl(str)

Checks if the given string is a relative URL.

# Examples
```julia-repl
julia> isrelativeurl("../path/to/directory")
true

julia> isrelativeurl("./__file__")
true

julia> isrelativeurl("foo:bar")
false
```
"""
function isrelativeurl(str::AbstractString)
    return !isurl(str)
end

end # module
