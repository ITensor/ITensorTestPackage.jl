using ITensorTestPackage: hello
using Test: @test, @testset

@testset "ITensorTestPackage" begin
    @test hello() == "Hello from ITensorTestPackage"
end
