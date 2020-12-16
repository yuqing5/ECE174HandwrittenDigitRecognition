%one vs all test data
test_ova = [];
for i = 1:10000
    a = testX(i,:);
    b = a*beta.'+alpha.';

    test_ova = [test_ova one_v_all(b)];
end

count = 0;
for j = 1:60000
    if testY(j) == test_ova(j)
        count = count + 1;
    end
end
test_ova_error = 1-(count/60000);

test_cof_matrix = zeros(10);
for i = 1:10
    for j = 1:10
        for k = 1:60000
            if testY(k) == i-1 && test_ova(k) == j-1
                test_cof_matrix(i,j) = test_cof_matrix(i,j)+1;
            end
        end
    end
end
