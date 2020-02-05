function [h] = mySplitFunction(f,g,a,b,x)

if x <= a
    h = feval(f,x);
elseif x >= b
    h = feval(g,x);
else
    h = 0;
end

end

% feval(@funct, x) is a function that evaluate an inputed function at a
% specific point x. For example, feval(@sin,1) = sin(1)
