function [endmatrix] = mybinadder(M1,M2)
tempM = invert(M1) + invert(M2);
tempvar = 0;
ZeroM = zeros(1, length(tempM)+1);

for n = 1:length(tempM)
    ZeroM(n) = tempM(n) + tempvar;
    tempvar = 0;
    if ZeroM(n) == 1
        ZeroM(n) = 1;
    elseif ZeroM(n) == 2
        tempvar = 1;
        ZeroM(n) = 0;
    elseif ZeroM(n) == 3
        tempvar = 1;
        ZeroM(n) = 1;
    end
end
if tempvar == 1
    ZeroM(length(ZeroM)) = 1;
end
endmatrix = invert(ZeroM);
end


% Sub-Function: invert(left-right) matrix
function [inM] = invert(ogM)
% This function just inverse the invers binary function
tempMatrix = ogM;
t2 = nan;
for i = 1:length(tempMatrix)
    a =length(tempMatrix) + 1 - i;
    t2 = ([t2, tempMatrix(a)]);
end
inM = t2(2:end);
end
