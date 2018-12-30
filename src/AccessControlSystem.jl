"""
# AccessControlSystem

## Description
> The state of an access control system is defined by a triple (S, O, A), where S is the set of subjects, O is the set of objects, and A is an access matrix, with rows corresponding to subjects and columns corresponding to objects. An entry A[s, o] is a set of rights.
(Ferraiolo at al., 2007)

## Bibliography
- Ferraiolo, D., Kuhn, D.R., Chandramouli, R., 2007. Role-based access control, 2nd ed. Artech House, Boston.

## TODO:
- Different data structures are possible to manage access control data, especially:
- BitArray{<:Bool, 3}. Pros: analytics. Cons: only small datasets, need to syncrhonize subject,object,right vectors.
- Sparse array: Pros & Cons: same except we can manage larger real-life datasets.
- Database table: Pros: large data. Cons: analytic perfs.
- We should consider both in-memory array storage and remote DB (JuliaDB?) in remote system for voluminous data.
- Possible approach: use a table-like data structure. And make it exportable to Array on-demand.
"""
mutable struct AccessControlSystem
    label::String;
    subject::Vector{<:Subject};
    object::Vector{<:Object};
    right::Vector{<:Right};
    access_matrix::BitArray{3};
end;
function AccessControlSystem(subject_length::Int = 0, object_length::Int = 0, right_length::Int = 0; label::String = "An ACS")
    subject = Subject(n=subject_length);
    right = Right(n=right_length);
    object = Object(n=object_length);
    access_matrix = falses(subject_length, object_length, right_length);
    acs = AccessControlSystem(label, subject, object, right, access_matrix);
    return acs;
end;
