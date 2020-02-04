function [S] = myInsideTriangle(x,y)

if y == -x+1 
    S = ('border');
elseif y < -x+1 && y > 0 && x > 0
    S = ('inside');
else
    S = ('outside');
end

end