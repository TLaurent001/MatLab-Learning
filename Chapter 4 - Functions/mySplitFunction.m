function [h] = mySplitFunction(f,g,a,b,x)

if x <= a
    h = feval(f,x);
elseif x >= b
    h = feval(g,x);
else
    h = 0;
end

end

   