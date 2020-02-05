function [M] = myMax(A)

i = 1;
M = 1;

while i < (length(A)+1)
    if A(i) > M
        M = A(i);
    end
    i = i +1;
end

    
end