
"""
# AccessControlSystem

"""
mutable struct AccessControlSystem
    label::String;
    subject::Vector{<:Subject};
    right::Vector{<:Right};
    object::Vector{<:Object};
    access_array::Array{<:Right, 3};
end;
