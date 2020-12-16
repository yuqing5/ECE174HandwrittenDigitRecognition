%this function accepts inputX(trainX), group representatives, and K
%It returns a new ci(how each xi is assign to which group)
function new_ci = min_dis(inputX,z,K)

for i = 1:length(inputX)
    min_dis = norm(double(inputX(1,:))-double(z(1,:)));%initial value
    for j = 1:K
        if min_dis >=  norm(double(inputX(i,:))-double(z(j,:)))
            min_dis = norm(double(inputX(i,:))-double(z(j,:)));
            new_ci(1,i) = j;
        else
            new_ci(1,i) = 1;
       
    end
end
end




