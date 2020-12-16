
function Y = clean_data(X)
[rows,cols] = size(X);

for i = cols:-1:1
    %fprintf('i=%f\n',i)
    count = 0;
    for j = 1:rows
        if X(j,i) == 0
            count = count+1;
        end
    end
    if count > (rows - 600)
        
         X(:,i) = [];
         
    end
end
Y = X;
end
            