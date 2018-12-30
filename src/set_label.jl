"""
# set_label, set_label!

## Description
Assign a free-text label to something. Labels help to identify objects (in the computer science but not access control sense). But labels are not unique identifiers. Labels can be modified any time.
"""
function set_label end;
function set_label(thing::AbstractThing, label::String)::AbstractThing
    thing.label = label;
    return thing;
end;
function set_label!(thing::AbstractArray{<:AbstractThing}, label::AbstractArray{<:String})::Array{<:AbstractThing}
    broadcast(set_label, thing, label);
    return thing;
end;
