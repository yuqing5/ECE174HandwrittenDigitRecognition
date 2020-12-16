

para = [para_0_1.';
    para_0_2.';
    para_1_2.';
    para_0_3.';
    para_1_3.';
    para_2_3.';
    para_0_4.';
    para_1_4.';
    para_2_4.';
    para_3_4.';
    para_0_5.';
    para_1_5.';
    para_2_5.';
    para_3_5.';
    para_4_5.';
    para_0_6.';
    para_1_6.';
    para_2_6.';
    para_3_6.';
    para_4_6.';
    para_5_6.';
    para_0_7.';
    para_1_7.';
    para_2_7.';
    para_3_7.';
    para_4_7.';
    para_5_7.';
    para_6_7.';
    para_0_8.';
    para_1_8.';
    para_2_8.';
    para_3_8.';
    para_4_8.';
    para_5_8.';
    para_6_8.';
    para_7_8.';
    para_0_9.';
    para_1_9.';
    para_2_9.';
    para_3_9.';
    para_4_9.';
    para_5_9.';
    para_6_9.';
    para_7_9.';
    para_8_9.'];
para = para.';

%one vs all alpha beta values
alpha_i_j = para(end,:);

beta_i_j = para(1:end-1,:);

%trainX(:,end)=[];
result_ovo = [];
for i = 1:60000
    a_i_j = trainX(i,:);
    b_i_j = a_i_j*beta_i_j+alpha_i_j;
    result_ovo = [result_ovo ovo_clasi(b_i_j)];
end

%error rate and confusion matrix for one vs all
count_i_j = 0;
for j = 1:60000
    if trainY(j) == result_ovo(j)
        count_i_j = count_i_j + 1;
    end
end
ovo_error = 1-(count_i_j/60000);

cof_matrix_i_j = zeros(10);
for i = 1:10
    for j = 1:10
        for k = 1:60000
            if trainY(k) == i-1 && result_ovo(k) == j-1
                cof_matrix_i_j(i,j) = cof_matrix_i_j(i,j)+1;
            end
        end
    end
end

sum_col_i_j = [];
for i = 1:10
    sum_col_i_j(i) = sum(cof_matrix_i_j(i,:));
end

cof_matrix_i_j = [cof_matrix_i_j (sum_col_i_j).'];

sum_row_i_j = [];
for i = 1:11
    sum_row_i_j(i) = sum(cof_matrix_i_j(:,i));
end

cof_matrix_i_j = [cof_matrix_i_j; sum_row_i_j];
