"""
# Object
In access control systems, an object can be any resource (file, record, application, ...) on which operations may be performed (read, modify, hunt, fish, ...).
"""
mutable struct Object <: AbstractObject
    label::String;

end;
