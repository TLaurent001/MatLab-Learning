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

       