function [Q] = myTrigOddEven2(M)

matrix_size = size(M);
Q = M;

% where matrix_size(1) is the number of rows and matrix_size(2) is the number of collums

i = 1;

while i < (matrix_size(1)*matrix_size(2))+1
    if mod(M(i), 2) == 0
        Q(i) = cos(pi/M(i));
    else
        Q(i) = sin(pi/M(i));
    end
    i = i + 1;
end

end 
