%Question10.m
%   Author: Thomas Laurent
%   Solve problem

% The admission fee at a small fair is $1.50 for children and $4.00 for adults.
% On a certain day, 2200 people enter the fair and $5050 is collected.
% How many children and how many adults attended?


% INPUT
TempVar = [1,1,2200;1.5,4,5050];
TempVar = rref(TempVar);
Children = TempVar(1,3)
Adults = TempVar(2,3)