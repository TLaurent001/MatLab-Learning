function [roll] = myMonopolyDice()


A = randi([1 6],1,2);
tempvar = 0;
samenumber = 0;

if A(1) == A(2)
    samenumber = true();
end

while samenumber == true()
    tempvar = tempvar + (A(1) * 2);
    A = randi([1 6],1,2);
    if A(1) ~= A(2)
        samenumber = false();
    end
end

roll = tempvar +A(1) + A(2);

end
