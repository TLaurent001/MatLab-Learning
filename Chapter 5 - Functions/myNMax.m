function [M] = myNMax(A, N)
%This function finds N amount of highest value (accounts for repeats)
for n = 1:N
    if n == 1
        M = myMax(A);
        A = A(A~=myMax(A));
    else
        M = [M, myMax(A)];
        A = A(A~=myMax(A));
    end
end
   
end


function [M] = myMax(A)
% This function finds the highest value in a matrix
i = 1;
M = 1;

while i < (length(A)+1)
    if A(i) > M
        M = A(i);
    end
    i = i +1;
end

    
end