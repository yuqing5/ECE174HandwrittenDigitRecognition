%output Gi is a group of the indexs of xis belongs to Gi
function Gi = grouping(ci,i)
Gi = [];
for h = 1:60000
    if ci(h) == i
        Gi = [Gi h];
    end
end
end
