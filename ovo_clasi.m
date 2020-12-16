function result_ovo = ovo_clasi(X,para,i,j)

alpha_i_j = para(end,:);
beta_i_j = para(1:end-1,:);
f = beta_i_j.'.*(X.')+alpha_i_j;
if f > 0
    result_ovo = i;
else
    result_ovo = j;
end
end
    