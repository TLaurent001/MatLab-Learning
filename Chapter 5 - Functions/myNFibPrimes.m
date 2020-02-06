% WARNING: This code is really slow due to it looking at each interger,
% from 1 to your last number, and checking at each point if it is a prime
% and a fibonacci number.

% Food for thought: a prob better way to do this would be to get a NFib
% function and checking each component if its prime or not. This would
% result in a whole lot less calculation for the computer and drastically
% improving the time it takes for the computer to answer

function [fibPrimes] = myNFibPrimes(N)
tempvar = nan;
a = 1;
while length(tempvar) ~= N+1
    if myIsPrime(a) == true() && is_fibonacci(a) == true()
        tempvar = [tempvar, a];
    end
    a = a+1;
end
fibPrimes = tempvar(2:end);
end

% ---------------------------------------------------------------------- %
% -------------------- SUB-FUNCTION 1 ---------------------------------- %
% ---------------------------------------------------------------------- %

function [output] = is_fibonacci(input)
% This function looks if a number is a fibonacci number
previousvalue = 0;
currentvalue = 1;
tf = false();
while currentvalue < input+1
    tempvar = previousvalue + currentvalue;
    if (previousvalue + currentvalue) == input
        tf = true();
    end
    previousvalue = currentvalue;
    currentvalue = tempvar;
end
output = tf;
end

% ---------------------------------------------------------------------- %
% -------------------- SUB-FUNCTION 2 ---------------------------------- %
% ---------------------------------------------------------------------- %

function [out] = myIsPrime(n)
% This function checks if a number is a prime number
i = 2;
tf = true();
if n == 1
    tf = false();
elseif n == 2
    tf = true();   
elseif n ~= 1
    while i < n
        if mod(n, i) == 0 
            tf = false();
        end
        i = i +1;
    end
end
out = tf;
end

    