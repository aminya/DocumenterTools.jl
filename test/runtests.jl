using Test
using DocumenterTools

@testset "DocumenterTools" begin
    @testset "generate" begin
        include("generate.jl")
    end

    @testset "genkeys-added" begin
        using Example
        DocumenterTools.genkeys(user="JuliaLang", repo="git@github.com:JuliaLang/Example.jl.git")
    end

    @testset "genkeys-deved" begin
        using Pkg;
        Pkg.develop("Example")
        using Example
        DocumenterTools.genkeys(Example)
    end


end
