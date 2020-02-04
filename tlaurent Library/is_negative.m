% This Function looks if a number is negative. No additional info, it's
% self-explanatory

function [output] = is_negative(input)

if isreal(sqrt(input))
    output = false;
else
    output = true;
end
end
