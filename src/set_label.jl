
function set_label(thing::AbstractThing, label::String)::Thing
    thing.label = label;
    return thing;
end;
function set_label!(things::AbstractArray{<:AbstractThing}, labels::AbstractArray{<:String})::Array{<:AbstractThing}
    broadcast(set_label, things, labels);
end;
