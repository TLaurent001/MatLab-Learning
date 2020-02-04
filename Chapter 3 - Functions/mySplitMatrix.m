function [M1, M2] = mySplitMatrix(M);

colnum = size(M,2);

%ceil(x) is a function to round up to the next interger

M1 = M(:,1:ceil((colnum/2)));
M2 = M(:,(ceil((colnum/2)+1)):colnum);

end