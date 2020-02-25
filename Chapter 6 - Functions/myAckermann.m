function [A] = myAckermann(m,n)
A = 0;
if m == 0 
    A = (n+1);
    return
elseif m > 0 && n == 1
    A = myAckermann(m-1,1);
    return
end

    
A = myAckermann(m-1,(myAckermann(m,n-1)));

end
