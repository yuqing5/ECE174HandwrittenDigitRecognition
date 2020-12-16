%error rate and confusion matrix for one vs all
%trainX(:,end)=[];
result_ova = [];
for i = 1:60000
    a = trainX(i,:);
    b = a*beta.'+alpha.';

    result_ova = [result_ova one_v_all(b)];
end

count = 0;
for j = 1:60000
    if trainY(j) == result_ova(j)
        count = count + 1;
    end
end
ova_error = 1-(count/60000);

cof_matrix = zeros(10);
for i = 1:10
    for j = 1:10
        for k = 1:60000
            if trainY(k) == i-1 && result_ova(k) == j-1
                cof_matrix(i,j) = cof_matrix(i,j)+1;
            end
        end
    end
end

sum_col = [];
for i = 1:10
    sum_col(i) = sum(cof_matrix(i,:));
end

cof_matrix = [cof_matrix sum_col.'];

sum_row = [];
for i = 1:11
    sum_row(i) = sum(cof_matrix(:,i));
end

cof_matrix = [cof_matrix; sum_row];

        