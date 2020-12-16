function Y = bi_clasi_n(X,n)
[rows,cols] = size(X);
Y = [];
for i = 1:cols
    if X(i) == n
        Y = [Y 1];
    else
        Y = [Y -1];
    end
end
end
