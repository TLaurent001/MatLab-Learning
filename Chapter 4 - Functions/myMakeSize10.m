function [out] = myMakeSize10(x)

tempvar = length(x)+1;
temparray = zeros(1,10);
i = 1;
while i < tempvar && i < 11
    temparray(i) = x(i);
    i = i +1;
end
out = temparray;
end
