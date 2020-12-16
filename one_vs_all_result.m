%alpha = repmat(alpha,0,60000);
%trainX(:,end)=[];
%F = beta*(trainX.')+alpha;

    X = trainX(3,:);
    
b = X*beta.'+alpha.';
result = one_v_all(b);
