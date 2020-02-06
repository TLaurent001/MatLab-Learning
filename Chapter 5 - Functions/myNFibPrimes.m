% WARNING: This code is really slow due to it looking at each interger,
% from 1 to your last number, and checking at each point if it is a prime
% and a fibonacci number.

% Food for thought: a prob better way to do this would be to get a NFib
% function and checking each component if its prime or not. This would
% result in a whole lot less calculation for the computer and drastically
% improving the time it takes for the computer to answer

% This can be further improved if you change the myPrime function to look
% for one wrong and then stop. And look for mod1 2 3 4 5 6 7 8 9 10 which
% should be majority of divisible stuff


function [fibPrimes] = myNFibPrimes(N)
tempvar = nan;
a = 1;
while length(tempvar) ~= N+1
    if myIsPrime(getfibonacci(a)) == true()
        tempvar = [tempvar, getfibonacci(a)];
    end
    a = a+1;
end
fibPrimes = tempvar(2:end);
end

% ---------------------------------------------------------------------- %
% -------------------- SUB-FUNCTION 1 ---------------------------------- %
% ---------------------------------------------------------------------- %

function [out] = myIsPrime(n)
% This function checks if a number is a prime number
i = 2;
tf = true();
if n == 1
    tf = false();
elseif n == 2
    tf = true();   
else
    while i < n && tf == true()
        if mod(n, i) == 0 
            tf = false();
        end
        i = i +1;
    end
end
out = tf;
end

% ---------------------------------------------------------------------- %
% -------------------- SUB-FUNCTION 2 ---------------------------------- %
% ---------------------------------------------------------------------- %

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
    