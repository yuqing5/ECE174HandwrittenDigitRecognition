%First, we need to clean the data(trainX and testX).We need to ditch the
%columns with less than 600 nonzeros
trainX = rescale(clean_data(trainX));%rescale data to range 0 to 1
testX = rescale(clean_data(testX));

col1 = ones([60000,1]);%add a column of one to the matrix
%trainX = [trainX col1];

trainY_zero = bi_clasi(trainY,0);
trainY_one = bi_clasi(trainY,1);
trainY_two = bi_clasi(trainY,2);
trainY_three = bi_clasi(trainY,3);
trainY_four = bi_clasi(trainY,4);
trainY_five = bi_clasi(trainY,5);
trainY_six = bi_clasi(trainY,6);
trainY_seven = bi_clasi(trainY,7);
trainY_eight = bi_clasi(trainY,8);
trainY_nine = bi_clasi(trainY,9);

result_zero = lsqlin(double(trainX),double(trainY_zero.'));
result_one = lsqlin(double(trainX),double(trainY_one.'));
result_two = lsqlin(double(trainX),double(trainY_two.'));
result_three = lsqlin(double(trainX),double(trainY_three.'));
result_four = lsqlin(double(trainX),double(trainY_four.'));
result_five = lsqlin(double(trainX),double(trainY_five.'));
result_six = lsqlin(double(trainX),double(trainY_six.'));
result_seven = lsqlin(double(trainX),double(trainY_seven.'));
result_eight = lsqlin(double(trainX),double(trainY_eight.'));
result_nine = lsqlin(double(trainX),double(trainY_nine.'));

alpha_zero = result_zero(end);
alpha_one = result_one(end);
alpha_two = result_two(end);
alpha_three = result_three(end);
alpha_four = result_four(end);
alpha_five = result_five(end);
alpha_six = result_six(end);
alpha_seven = result_seven(end);
alpha_eight = result_eight(end);
alpha_nine = result_nine(end);

beta_zero = result_zero(1:end-1);
beta_one = result_one(1:end-1);
beta_two = result_two(1:end-1);
beta_three = result_three(1:end-1);
beta_four = result_four(1:end-1);
beta_five = result_five(1:end-1);
beta_six = result_six(1:end-1);
beta_seven = result_seven(1:end-1);
beta_eight = result_eight(1:end-1);
beta_nine = result_nine(1:end-1);

alpha = [alpha_zero; alpha_one; alpha_two; alpha_three; alpha_four;
    alpha_five; alpha_six; alpha_seven; alpha_eight; alpha_nine];
%turn alpha into a nine times one vector
beta = [(beta_zero.'); (beta_one.'); (beta_two.'); (beta_three.'); 
    (beta_four.'); (beta_five.'); (beta_six.'); (beta_seven.'); 
    (beta_eight.'); (beta_nine.')];
%turn beta into a nine times 493 matrix

