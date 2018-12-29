
"""
# BusinessModel
## Fields
- `t::Integer`: 1 if model was just initialized, 1 + the number of time periods elapsed since model initialization otherwise. Time is considered in an abstract sense, without units.
- `p::Vector{<:AbstractFloat}`: A vector of individual probabilities (0 <= p <= 1) linked to the access rights, representing the probability that this particular access right be required by a new user.
- `pσ::Number`: The standard deviation of the normal distribution from which random samples will be taken to make `p` evolve from time period to time period. Default: 1%.
- `a::Matrix{<:Bool}`: A matrix of access rights business requirements. Rows = Users. Columns = Access Rights.
"""
mutable struct BusinessModel
    t::Int
    p::Vector{<:Number}
    pσ::Number
    a::BitArray{2}
    function BusinessModel(u:: Int, r:: Int, pσ::Number = 0.01)
        t = 1; # The first instant of the model life is 1.
        p = rand(r); # Initialize right probabilities are randomely select from uniform distribution.
        a = BitArray{2}(undef, 0, r); # Initialize the original array without any users.
        m = new(t, p, pσ, a);
        add_users(m, u);
        return m;
    end;
end;
#function Base.show(io::IO, m::BusinessModel)
    #compact = get(io, :compact, false);
    #if compact
        #print("m(t: ", m.t, ", |u|: ", count_users(m), ", |r|: ", count_rights(m), "pσ: ", m.pσ, ")");
    #else
    #    println("BusinessModel");
    #    println("t: ", m.t);
    #    println("|u|: ", count_users(m));
    #    println("|r|: ", count_rights(m));
    #    println("pσ: ", m.pσ);
    #    println("p: ", m.p);
    #end;
#end;
#function Base.show(io::IO, ::MIME"text/plain", m::BusinessModel)
#    println("MIME: text/plain");
#    show(io, m);
#end;
function count_users(m::BusinessModel)
    return size(m.a)[1];
end;
function count_rights(m::BusinessModel)
    return size(m.a)[2];
end;
function add_users(m::BusinessModel, u::Int = 1)
    # Generate a matrix of random values,
    # that will be used to randomely determine which user is granted what access right.
    up = rand(u, count_rights(m));
    # Reshape the model access right probabilities to match the size of the above random matrix.
    mp = repeat(reshape(m.p, 1, length(m.p)),u);
    # For every matrix value where the user's random value is lower than the probability,
    # consider the right as granted, otherwise not granted.
    ua = broadcast(<, up, mp);
    # Merge the new user's rights into the model.
    m.a = cat(dims=1, m.a, ua);
end;
function sample1()
    m = BusinessModel(3,4,.01);
    count_users(m);
    count_rights(m);
    m;
    m.a;
end;
#sample1();
