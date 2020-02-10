% Detecting the index of the numbers inside the matrix. This function
% should only be used in the myConnectivityMat2Struct function.

function [output] = detec_index(namepos, C)
i = 1;
tempmatrix = C(1:size(C,1),namepos);
tempvar = nan;
while i < length(tempmatrix) +1
    if tempmatrix(i) == 1
        tempvar = [tempvar, i];
    end
    i = i +1;
end
output = tempvar(2:end);
end
    
