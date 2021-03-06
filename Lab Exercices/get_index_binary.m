function [output] = get_index_binary(input)
i = 1;
running = true();
tempmatrix = nan;
tempvar = input;
if input == 0
    tempmatrix = 0;
    running = false();
elseif input == 1
    tempmatrix = 1;
    running = false();
else
    while running == true()
        tempmatrix = [tempmatrix, get_high(tempvar)];
        tempvar = tempvar - 2^(get_high(tempvar));
        if tempvar == 0 || tempvar < 0
            running = false();
        end
        i = i+1;
    end 
end
output = tempmatrix(2:end);
end 

%you will need to inverse the tempmatrix because it starts by the highest
%but thats another thing for another time

% get the highest numvber in base 2 and will output index of where to place
% 1 in a string of zeroes ex: get_high(4) = 2 or binary: 000010 but also
% get_high(5) = 2 because its 2 and then 1

% if 0 code will return 'DONE'

function [out] = get_high(input)
n = 1;
gotanumber = false();
tempvar = 0;
if input == 0
    tempvar = 'DONE';
elseif input == 1
    tempvar = 0;
else
    while gotanumber == false()
        if (2)^n > input
            tempvar = n-1;
            gotanumber = true();
        end
        n = n+1;
    end
end
out = tempvar;
end




        