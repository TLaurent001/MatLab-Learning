% 
% This file is for documentation on matlab and particularly its functions
%
% GENERAL:
%
%  && means AND         || means OR        == means EQUAL TO
%
% [1,2] = vector/matrix
%
% {'A', 'B'; 1,2} = cell  
%
% This is basically the same thing except that in this case you can put
% words in it
%
% .* or ./ or .^x is the component form of the respective functions. This
% is useful if you want to multiply/divide/power each component in a matrix
%
%
% FUNCTIONS:
%
% cell2mat transforms a cell into a matrix so that calculations can happen
%
% append combines 2 or more components together so append('A','B') = 'AB' 
%
% zeros(n,m) and ones(n,m) creates a n by m matrix of zeroes or ones
%
% error(msg) gives a specific error message and stops your function/script 
%
% ceil(x) is a function to round up to the next interger
%
% floor(x) is the opposite, it rounds down to the next interger
%
% round(value, precision) is a function that rounds a variable to a
% specific precision number
%
% strcmp(s1,s2) is a function that compares 2 or more strings or words and
% outputs a True or False value
%
% feval(@funct, x) is a function that evaluate an inputed function at a
% specific point x. For example, feval(@sin,1) = sin(1)
%
