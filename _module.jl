module RbacModel

export randomwalk_normal_bounded!;
export BusinessModel;

include(raw"fun\randomwalk_normal_bounded.jl");
include(raw"struct\BusinessModel.jl");

# End of module.
end;
