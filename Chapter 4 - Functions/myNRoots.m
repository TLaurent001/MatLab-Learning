function [Nroots, r] = myNRoots(a,b,c)

if b^2 > 4*a*c
    tvar1 = (-b+sqrt((b^2)-(4*a*c)))/(2*a);
    tvar2 = (-b-sqrt((b^2)-(4*a*c)))/(2*a);
    r = [tvar1, tvar2];
    Nroots = 2;
elseif b^2 < 4*a*c
    tvar1 = (-b+sqrt((b^2)-(4*a*c)))/(2*a);
    tvar2 = (-b-sqrt((b^2)-(4*a*c)))/(2*a);
    r = [tvar1, tvar2];
    Nroots = -2;
else
    r = (-b)/(2*a);
    Nroots = 1;
end

end
