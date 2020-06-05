using Test
using IsURL

@testset "isurl" begin
    @test isurl("http://julialang.org") == true
    @test isurl("https://julialang.org") == true
    @test isurl("httpS://julialang.org") == true
    @test isurl("file://julialang.org") == true
    @test isurl("mailto:someone@example.com") == true
    @test isurl("data:text/plainbase64,SGVsbG8kIQ%3D") == true

    @test isurl("//julialang.org") == false
    @test isurl("/foo/bar") == false
    @test isurl("foo/bar") == false
    @test isurl("foo") == false
    @test isurl("c:\\") == false
    @test isurl("c:\\Folder\\file") == false
    @test isurl("C:\\Folder\\file") == false
    @test isurl("ht,tp://julialang.org") == false
end
