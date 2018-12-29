
"""
# AccessControlSystem

"""
mutable struct AccessControlSystem
    label::String;
    subjects::Vector{<:Subject};
    rights::Vector{<:Right};
    objects::Vector{<:Object};
    access_array::Array{<:Right, 3};
end;
