
function set_label(thing::AbstractThing, label::String)::AbstractThing
    thing.label = label;
    return thing;
end;
function set_label!(thing::AbstractArray{<:AbstractThing}, label::AbstractArray{<:String})::Array{<:AbstractThing}
    broadcast(set_label, thing, label);
    return thing;
end;
