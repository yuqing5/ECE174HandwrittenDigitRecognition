function [ci,zi,J_cl] = K_means_clst(inputX,K)
ci = initial_ci(inputX,K);%calculate initial ci and zi
zi = group_representative(ci,inputX,K);
J_cl = [];
P = 10;
for itr = 1:P
    ci = min_dis(inputX,zi,K);%get new ci and zi
    %fprintf('sum of ci=%f\n',sum(ci));
    zi = group_representative(ci,inputX,K);
    %z_sum=sum(zi);
    %fprintf('sum of zi=%f',z_sum);
    %calculate J
    J = 0;
    for i = 1:length(ci)
        ci_int = uint8(ci);
        J= J+(norm(double(inputX(i,:))-double(zi(ci_int(i),:)))^2);
    end
    J = J/length(ci);
    %fprintf('J=%f\n',J);
    J_cl(length(J_cl)+1) = J;
end

end