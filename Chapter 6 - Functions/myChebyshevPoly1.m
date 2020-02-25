function [y] = myChebyshevPoly1(n,x)
y = zeros(1,length(x));
for index = 1:length(x)
    if n == 0
        y(index) = 1;
    elseif n == 1
        y(index) = x(index);
    else
        y(index) = (2*x(index)*myChebyshevPoly1(n-1,x(index)))-myChebyshevPoly1(n-2,x(index));
    end
end

