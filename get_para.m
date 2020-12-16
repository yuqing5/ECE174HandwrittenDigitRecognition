function para = get_para(trainX,trainY,i,j)
[trainX,trainY] = bi_clasi_ovo(trainX,trainY,i,j);

col_ones = ones(height(trainX),1);
trainX = [trainX col_ones];
A = (trainX.')*trainX;

y = (trainX.')*trainY.';
para = lsqlin(double(A),double(y));
