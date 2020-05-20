function [V] = problem3(A)

TempMat = zeros(length(A),1);
for i = 1:length(A)
    TempMat(i) = A(i,length(A)+1-i);
end

V = TempMat;
