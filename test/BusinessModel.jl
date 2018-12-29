using Test;

@testset "BusinessModel Tests" begin
   @testset "add_users $i" for i in 1:3
       u = 2;
       r = 3;
       m = CyberSecurity.BusinessModel(u, r, .02);
       CyberSecurity.add_users(m, i);
       @test CyberSecurity.count_users(m) == u + i;
   end
end;
