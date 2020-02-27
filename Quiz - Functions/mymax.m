function [M, mi, mj] = mymax(X)
% This function finds the highest value in a matrix
M = X(1,1);
tempvar_i = 1;
tempvar_j = 1;
for r = 1:size(X,1)
    for c = 1:size(X,2)
        if X(r,c) > M
            M = X(r,c);
            tempvar_i = r;
            tempvar_j = c;
        end
    end
end
mi = tempvar_i;
mj = tempvar_j;
end