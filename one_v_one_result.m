col1 = ones([60000,1]);%add a column of one to the matrix
%trainX = [trainX col1];

%find trainY after it goes through the binary classi
%trainY_i_j = [];
%for j = 0:9
 %   for i = 0:9
  %      if i<j
   %         trainY_i_j = [trainY_i_j;bi_clasi_ovo(trainY,i,j)];
    %    end
    %end
%end

[trainX_0_1,trainY_0_1] = bi_clasi_ovo(trainX,trainY,0,1);
[trainX_0_2,trainY_0_2] = bi_clasi_ovo(trainX,trainY,0,2);
[trainX_1_2,trainY_1_2] = bi_clasi_ovo(trainX,trainY,1,2);
[trainX_0_3,trainY_0_3] = bi_clasi_ovo(trainX,trainY,0,3);
[trainX_1_3,trainY_1_3] = bi_clasi_ovo(trainX,trainY,1,3);
[trainX_2_3,trainY_2_3] = bi_clasi_ovo(trainX,trainY,2,3);
[trainX_0_4,trainY_0_4] = bi_clasi_ovo(trainX,trainY,0,4);
[trainX_1_4,trainY_1_4] = bi_clasi_ovo(trainX,trainY,1,4);
[trainX_2_4,trainY_2_4] = bi_clasi_ovo(trainX,trainY,2,4);
[trainX_3_4,trainY_3_4] = bi_clasi_ovo(trainX,trainY,3,4);
[trainX_0_5,trainY_0_5] = bi_clasi_ovo(trainX,trainY,0,5);
[trainX_1_5,trainY_1_5] = bi_clasi_ovo(trainX,trainY,1,5);
[trainX_2_5,trainY_2_5] = bi_clasi_ovo(trainX,trainY,2,5);
[trainX_3_5,trainY_3_5] = bi_clasi_ovo(trainX,trainY,3,5);
[trainX_4_5,trainY_4_5] = bi_clasi_ovo(trainX,trainY,4,5);
[trainX_0_6,trainY_0_6] = bi_clasi_ovo(trainX,trainY,0,6);
[trainX_1_6,trainY_1_6]= bi_clasi_ovo(trainX,trainY,1,6);
[trainX_2_6,trainY_2_6] = bi_clasi_ovo(trainX,trainY,2,6);
[trainX_3_6,trainY_3_6] = bi_clasi_ovo(trainX,trainY,3,6);
[trainX_4_6,trainY_4_6] = bi_clasi_ovo(trainX,trainY,4,6);
[trainX_5_6,trainY_5_6] = bi_clasi_ovo(trainX,trainY,5,6);
[trainX_0_7,trainY_0_7] = bi_clasi_ovo(trainX,trainY,0,7);
[trainX_1_7,trainY_1_7] = bi_clasi_ovo(trainX,trainY,1,7);
[trainX_2_7,trainY_2_7] = bi_clasi_ovo(trainX,trainY,2,7);
[trainX_3_7,trainY_3_7] = bi_clasi_ovo(trainX,trainY,3,7);
[trainX_4_7,trainY_4_7] = bi_clasi_ovo(trainX,trainY,4,7);
[trainX_5_7,trainY_5_7] = bi_clasi_ovo(trainX,trainY,5,7);
[trainX_6_7,trainY_6_7] = bi_clasi_ovo(trainX,trainY,6,7);
[trainX_0_8,trainY_0_8] = bi_clasi_ovo(trainX,trainY,0,8);
[trainX_1_8,trainY_1_8] = bi_clasi_ovo(trainX,trainY,1,8);
[trainX_2_8,trainY_2_8] = bi_clasi_ovo(trainX,trainY,2,8);
[trainX_3_8,trainY_3_8] = bi_clasi_ovo(trainX,trainY,3,8);
[trainX_4_8,trainY_4_8] = bi_clasi_ovo(trainX,trainY,4,8);
[trainX_5_8,trainY_5_8] = bi_clasi_ovo(trainX,trainY,5,8);
[trainX_6_8,trainY_6_8] = bi_clasi_ovo(trainX,trainY,6,8);
[trainX_7_8,trainY_7_8]= bi_clasi_ovo(trainX,trainY,7,8);
[trainX_0_9,trainY_0_9] = bi_clasi_ovo(trainX,trainY,0,9);
[trainX_1_9,trainY_1_9] = bi_clasi_ovo(trainX,trainY,1,9);
[trainX_2_9,trainY_2_9] = bi_clasi_ovo(trainX,trainY,2,9);
[trainX_3_9,trainY_3_9] = bi_clasi_ovo(trainX,trainY,3,9);
[trainX_4_9,trainY_4_9] = bi_clasi_ovo(trainX,trainY,4,9);
[trainX_5_9,trainY_5_9] = bi_clasi_ovo(trainX,trainY,5,9);
[trainX_6_9,trainY_6_9] = bi_clasi_ovo(trainX,trainY,6,9);
[trainX_7_9,trainY_7_9] = bi_clasi_ovo(trainX,trainY,7,9);
[trainX_8_9,trainY_8_9] = bi_clasi_ovo(trainX,trainY,8,9);

%find least square of one to one
%trainY_i_j = trainY_i_j.';
%result_i_j = [];
%for h = 1:45
 %   result_i_j = [result_i_j lsqlin(double(trainX),double(trainY_i_j(:,h)))];
%end


