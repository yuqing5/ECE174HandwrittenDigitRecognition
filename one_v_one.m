function Y = one_v_one(X);
vote_zero = X(1)+X(2)+X(4)+X(7)+X(11)+X(16)+X(22)+X(29)+X(37);
vote_one = X(3)+X(5)+X(8)+X(12)+X(17)+X(23)+X(30)+X(38);
vote_two = X(6)+X(9)+X(13)+X(18)+X(24)+X(31)+X(39);
vote_three = X(10)+X(14)+X(19)+X(25)+X(32)+X(40);
vote_four = X(15)+X(20)+X(26)+X(33)+X(41);
vote_five = X(21)+X(27)+X(34)+X(42);
vote_six = X(28)+X(35)+X(43);
vote_seven = X(36)+X(44);
vote_eight = X(45);
vote_nine = 0;
A = [vote_zero;vote_one;vote_two;vote_three;vote_four;vote_five;
    vote_six;vote_seven;vote_eight;vote_nine];
[~,idx] = max(A);
Y = idx-1;
end
            