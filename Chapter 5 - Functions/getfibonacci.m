function [output1] = getfibonacci(input1)
% This function gets a fibonacci number. This function is only meant to be
% used in myNfibPrime function
previousvalue1 = 0;
currentvalue1 = 1;
tempvar1 = 0;
for i = 1:input1
    tempvar1 = previousvalue1 + currentvalue1;
    previousvalue1 = currentvalue1;
    currentvalue1 = tempvar1;
end 
output1 = tempvar1;    
end