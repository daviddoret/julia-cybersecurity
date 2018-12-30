"""
# grant_right, grant_right!

## Description
Grant a Right to a Subject on an Object. 
"""
function grant_right end;
function grant_right(thing::AbstractThing, label::String)::AbstractThing
    thing.label = label;
    return thing;
end;
function grant_right!(thing::AbstractArray{<:AbstractThing}, label::AbstractArray{<:String})::Array{<:AbstractThing}
    broadcast(grant_right, thing, label);
    return thing;
end;
