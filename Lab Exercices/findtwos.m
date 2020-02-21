function [i,j] = findtwos(A)
x = 1;
indexrowmatrix =nan;
indexcollummatrix = nan;
tempvar = size(A);

while x <  tempvar(1) +1
    % i stands for rows 
    for n = x:tempvar(2)
        %n is re-init and n stands for collums
        if A(x, n) == 2
            indexcollummatrix = [indexcollummatrix, n];
            indexrowmatrix = [indexrowmatrix, x];
        end
    end
    x = x +1;
    
end
i = indexrowmatrix(2:end);
j = indexcollummatrix(2:end);
end

        