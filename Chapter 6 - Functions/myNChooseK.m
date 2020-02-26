function [N] = myNChooseK(n,k)
if n == k
    N = 1;
elseif k == 1
    N = n;
else
    N = myNChooseK(n-1,k) + myNChooseK(n-1,k-1);
end
end
