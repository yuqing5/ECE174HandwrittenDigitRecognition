%ci is the group number that xi belongs to (ci <=K). size(ci) = n*1
function ci = initial_ci(inputX,K)
ci = [];

for i = 1:height(inputX)
    ci = [ci randi([1,K])];
end
end

