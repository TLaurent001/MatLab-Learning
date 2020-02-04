function [M] = myCheckerBoard(n)

Zm = zeros(n);
Onem = Zm + 1;
M1 = [1:n];
MT = M1.';
M2 = Onem.*M1;
M3 = Onem.*MT;
M4 = (abs(mod(M2,2)-mod(M3,2))*-1);
M = Onem+M4;

end