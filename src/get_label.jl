
function get_label(thing::AbstractThing)::String
    return thing.label;
end;
function get_label!(thing::AbstractArray{<:AbstractThing})::Array{<:String}
    broadcast(get_label, thing);
end;
