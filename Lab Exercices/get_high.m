function [out] = get_high(input)
n = 1;
gotanumber = false();
tempvar = 0;
if input == 0
    tempvar = 2;
elseif input == 1
    tempvar = 1;
else
    while gotanumber == false()
        if (2)^n > input
            tempvar = n-1;
            gotanumber = true();
        end
        n = n+1;
    end
end
out = tempvar;
end

