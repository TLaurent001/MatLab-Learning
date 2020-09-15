function [B] = optionA(A)

% A = [1, 1, 1, 2, 4, 1, 0, 3, 3, 3, 3]; 
tempvar = 0;
lengthA = length(A);
computing = true();
while computing == true()
    if isempty(A) == true()
        break
    else
        tempvar2 = A(1);
        lengthA = length(A);
        A = A(A~=A(1));
        if abs(length(A)-lengthA) > tempvar
            tempvar = abs(length(A)-lengthA);
            value = tempvar2;
            lengthA = length(A);
        end
    end
end

B = value;

        
    
    
    