module IsURL

export isurl, isrelativeurl, iswindowsurl

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
    return !iswindowsurl(str) && occursin(urlregex, str)
end

"""
    isrelativeurl(str)

Checks if the given string is a relative URL.
Every URL that isn't absolute is relative.
"""
function isrelativeurl(str::AbstractString)
    return !isurl(str)
end

"""
    iswindowsurl(str)

Checks if the given string is a Windows path.
"""
function iswindowsurl(str::AbstractString)
    return occursin(windowsregex, str)
end

end # module
