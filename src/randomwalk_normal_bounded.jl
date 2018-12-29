using Random, Distributions;

"""
# randomwalk_normal_bounded(n::Array{<:Number}; σ::Number, nmin::Number, nmax::Number, steps::Number=1)

Execute an arbitrary number of random walk steps on the values of the n array,
consisting in the addition of random values from the normal distribution defined by σ,
and bounding the values between a minimum and a maximum.

## Examples
```randomwalk_normal_bounded!([.1,.2,.3], σ = .1, nmin = 0, nmax = 1, steps = 1);
julia> randomwalk_normal_bounded!([.1,.2,.3], σ = .1, nmin = 0, nmax = 1, steps = 1)
3-element Array{Float64,1}:
0.0480345320809181
0.07878951041425464
0.3094678083144717
```
"""
function randomwalk_normal_bounded!(n::Array{<:Number}; σ::Number, nmin::Number, nmax::Number, steps::Number=1)
    for step = 1 : steps
        n = broadcast(
          min,
          broadcast(
            max,
            n + rand(Normal(0.0, σ), length(n)),
            nmin),
          nmax);
    end;
    return n;
end;
