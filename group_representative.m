%find the group representative of each group
function Zi = group_representative(ci,inputX,K)
Zi = zeros(K,length(inputX(1,:)));
z = zeros(length(ci),width(inputX));
height = 0;
for i = 1:K
    for h = 1:length(ci)
       if ci(h) == i
           z(h,:)= inputX(h,:);
           height =height+1;
       end
    end
    Zi(i,:) = sum(z)/height;
end
end