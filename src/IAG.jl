module IAG # Identity and Access Governance module

include("AbstractThing.jl");
export AbstractThing;
include("AbstractObject.jl");
export AbstractObject;
include("AbstractSubject.jl");
export AbstractSubject;
include("AbstractRight.jl");
export AbstractRight;

include("Object.jl");
export Object;
include("Subject.jl");
export Subject;
include("Right.jl");
export Right;
include("AccessControlSystem.jl");
export AccessControlSystem;

include("get_label.jl");
export get_label;
include("set_label.jl");
export set_label;

end; # module
