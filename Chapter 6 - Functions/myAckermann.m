function [A] = myAckermann(m,n)

if m == 0 
    A = (n+1);
elseif n == 0
    A = myAckermann(m-1,1);
else
    A = myAckermann(m-1,(myAckermann(m,n-1)));
end
end
