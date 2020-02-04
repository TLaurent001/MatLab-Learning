function [f] = myMultOperation(a,b,operation)

if strcmp(operation, 'plus')
    f = a+b;
elseif strcmp(operation, 'minus')
    f = a-b;
elseif strcmp(operation, 'mult') 
    f = a.*b;
elseif strcmp(operation, 'div')
    f = a./b;
elseif strcmp(operation, 'pow')
    f = a.^b;
end

end
