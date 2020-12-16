function [Y] = bi_clasi_ovo(X,i,j)
[rows, cols] = size(X);

Y=[];
for k = 1:cols
    if X(k) == i
        Y = [Y 1];

    elseif X(k) == j
        Y = [Y -1];
    else
        Y = [Y 0];
    end
end
end
            
