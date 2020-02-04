% This function determinces the number of an array that are within a
% specific tolerance

function [output] = myWhithinToleraces(A,a,tol)
output = nan;
i = 1;
tempvar = length(A)+1;
decvar = get_decimal_place(tol);
A = round(A, decvar);
a = round(a, decvar);x
tol = round(tol, decvar);

while i < tempvar
    if round(abs(A(i)-a),decvar) <= round(tol,decvar) 
        output = [output, A(i)];
    end
    i = i + 1;
end

output = output(2:end);

end

function [x] = get_decimal_place(input)
% This function evaluates the precision of a number. More info in tlaurent lib

i = 0;

while mod(input, 10^-i) ~= 0
    i = i +1;
end 

x = i;
    
end