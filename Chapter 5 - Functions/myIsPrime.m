function [out] = myIsPrime(n)
% This function checks if a number is a prime number

i = 2;
tf = true();

if n == 1
    out = true();
elseif n == 2
    tf = false();   
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

       