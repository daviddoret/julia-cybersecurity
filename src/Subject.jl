"""
# Subject
In access control systems, a subject is a principal, person or system who may perform actions or operations (read, modify, hunt, fish, ...) on objects.

## Fields
- `label::string`: A free textual label or name to help identify the object.

## Constructors
- `Subject(;n::Int = 1)`: A shortcut to construct a vector of `n` Subject instances.
"""
mutable struct Subject <: AbstractSubject
    label::String;
end;
function Subject(;n::Int = 1)::Vector{Subject}
    useless(x) = Subject("a subject");
    broadcast(useless, repeat([0], n));
end;
