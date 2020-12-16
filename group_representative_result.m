%import mlreportgen.dom.*

%get ci
ci = initial_ci(20);

for a = 1:20
    G{a} = {grouping(ci,a)};%G is a cell array with K Gi
end

%z1 is group representative of G1. 
%z1 = sum(%xis belongs to G1)/size(G1);
%zk = ...


function Y = change_label(X)
store_ci = [];
for i = 1: K
    store_ci = [store_ci 