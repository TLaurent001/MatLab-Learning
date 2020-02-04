function [x] = quadraticEQN(a,b,c)

if b^2 > 4*a*c
    tvar1 = (-b+sqrt((b^2)-(4*a*c)))/(2*a);
    tvar2 = (-b-sqrt((b^2)-(4*a*c)))/(2*a);
    x = [tvar1, tvar2];
else
    error('Note: b^2 must be greater then 4*a*c')
end

end
