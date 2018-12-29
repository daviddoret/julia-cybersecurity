module RbacModel

using Random, Distributions;

Random.seed!(123) # Setting the seed

include("randomwalk_normal_bounded.jl");
export randomwalk_normal_bounded!;

include("BusinessModel.jl");
export BusinessModel;

function u(m::BusinessModel)
    return 1: size(m.a)[1];
end;

function r(m::BusinessModel)
    return 1: size(m.a)[2];
end;


function initialize_model(u::Int, r::Int)
    # Initialize a vector of expectancies
    e = rand(Float64, r);
    println(e);

end;

function sample()
    # Model initialization parameters
    r = 5; # Initial number of access rights
    u = 3; # Initial number of Users

    for i = 1:50
      global e;
      global rσ;
      e = randomwalk_normal_bounded!(e, σ = rσ, nmin = 0, nmax = 1, steps = 1);
      println(e);
    end;
end;

# End of module.
end;
