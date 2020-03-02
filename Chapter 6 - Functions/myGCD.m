function [gcd] = myGCD(a,b)

if b == 0
    gcd = a;
else
    gcd = myGCD(b, rem(a,b));
end 

