"""
# Subject
In access control systems, a subject is a principal, person or system who may perform actions or operations (read, modify, hunt, fish, ...) on objects.

## Fields
- `label::string`: A free textual label or name to help identify the object.
"""
mutable struct Subject <: AbstractSubject
    label::String;

end;
