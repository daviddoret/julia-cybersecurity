"""
# Object
In access control systems, an object can be any resource (file, record, application, ...) on which operations may be performed (read, modify, hunt, fish, ...).
"""
mutable struct Object <: AbstractObject
    label::String;
end;
function Object(;n::Int = 1)::Vector{Object}
    useless(x) = Object("an object");
    broadcast(useless, repeat([0], n));
end;
