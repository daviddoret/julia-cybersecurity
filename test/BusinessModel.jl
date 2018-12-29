using Test;

@testset "BusinessModel Tests" begin
           @testset "Construction" begin
               m =
               @test foo("cat") == 9
               @test foo("dog") == foo("cat")
           end
           @testset "count_users $i" for i in 1:3
               @test foo(zeros(i)) == i^2
               @test foo(fill(1.0, i)) == i^2
           end
       end;
