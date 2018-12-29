"""
# Right
In access control systems, a right is an action or operation (read, modify, hunt, fish, ...) that may be performed on a target object.

## Fields
- `label::string`: A free textual label or name to help identify the object.
"""
mutable struct Right <: AbstractRight
    label::String;

end;
