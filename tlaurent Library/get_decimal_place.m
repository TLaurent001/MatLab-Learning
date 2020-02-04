
% This function evaluates the precision of a number.
%
% For example:
% output = 0 means number has no number after decimal point.
%
% I = get_decimal_place(100)
%
% I = 0
%
% This also works numbers that matlab gives extra precision such as when
% you set x = 0.12 and matlab gives a precise output of 0.1200...
%
% In this case I = get_decimal_place(x) will give I = 2

function [output] = get_decimal_place(input)
% This function evaluates the precision of a number. More info in User lib

i = 0;

while mod(input, 10^-i) ~= 0
    i = i +1;
end 

output = i;
    
end