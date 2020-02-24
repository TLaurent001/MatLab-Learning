function [d] = myBin2Dec(B)
tempvar = 0;

for i = 1:length(B)
    if B(i) == 1
        tempvar = tempvar + 2^(length(B)-i);
    end
end 
d = tempvar;
end 