using Aqua: Aqua
using ITensorTestPackage: ITensorTestPackage
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(ITensorTestPackage)
end
