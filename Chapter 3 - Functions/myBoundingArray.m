function [boundedA] = myBoundingArray(A, top, bottom)

arraylength = length(A)+1;
i = 1;
while i < arraylength
    if is_negative(A(i)) && abs(A(i)) > abs(bottom)
        A(i) = bottom;
    else
        if A(i) > top
            A(i) = top;
        end
    end
    fprintf('i')
    i = i +1;
end

boundedA = A;     

end



function [output] = is_negative(input)
% This Function looks if a number is negative. More info in tlaurent lib

if isreal(sqrt(input))
    output = false;
else
    output = true;
end
end
