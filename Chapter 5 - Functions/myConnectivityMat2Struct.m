function [node] = myConnectivityMat2Struct(C, names)

node(1).name = cell2mat(names(1))
node(1).neighbors = 




% Detecting the name of the city

% Detecting the index of the numbers inside the matrix

function [output] = detec_index(namepos, C)
i = 1;
tempmatrix = C(1:size(C,1),namepos);
tempvar = nan;
while i < size(namepos, 1)+1
    if tempmatrix(i) == 1
        tempvar = [tempvar, i];
    end
end
output = tempvar(2:end);

