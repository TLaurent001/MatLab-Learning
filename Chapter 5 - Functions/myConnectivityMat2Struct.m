function [node] = myConnectivityMat2Struct(C, names)

for i = 1:length(names)
    node(i).name = cell2mat(names(i));
    node(i).neighbors = detect_index(i,C);
end
end

% Detecting the index of the numbers inside the matrix. This function
% should only be used in the myConnectivityMat2Struct function.

function [output] = detect_index(namepos,Matrix)
n = 1;
tempmatrix = Matrix(1:size(Matrix,1),namepos);
tempvar = nan;
while n < length(tempmatrix) +1
    if tempmatrix(n) == 1
        tempvar = [tempvar, n];
    end
    n = n +1;
end
output = tempvar(2:end);
end
    
