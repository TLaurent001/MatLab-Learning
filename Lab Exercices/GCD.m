function [c] = GCD(A,B)

i = 0;
tempvar = 0;

if A > B
    while i < A +1
        if mod(A, i) == 0 && mod(B,i) == 0
            tempvar = i;
        end
        i = i +1 ;
    end
    
elseif A < B
     while i < B + 1
        if mod(A, i) == 0 && mod(B,i) == 0
            tempvar = i;
        end
        i = i +1 ;
    end
    
elseif A == B
    tempvar = A;
end

c = tempvar;

end
