function [output] = getfibonacci(input)
% This function gets a fibonacci number. This function is only meant to be
% used in myNfibPrime function.
previousvalue1 = 0;
currentvalue1 = 1;
tempvar1 = 0;
for i = 1:input
    tempvar1 = previousvalue1 + currentvalue1;
    previousvalue1 = currentvalue1;
    currentvalue1 = tempvar1;
end 
output = tempvar1;    
end