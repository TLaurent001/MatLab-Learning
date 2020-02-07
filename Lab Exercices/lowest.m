function [X, index_value] = lowest(A)

i = 1;
index = 1;
tempvar = nan;

while i < length(A) +1
    if i == 1
        tempvar = A(i);
        index = i;
    elseif A(i) < tempvar
        tempvar = A(i);
        index = i;
    end
    i = i +1;
end

X = tempvar;
index_value = index;

end

       
        