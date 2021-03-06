function [X] = myDec2Bin(A1)
% This function just inverse the invers binary function
t2 = nan;
if A1 == 0
    t2 = 0;
elseif A1 == 1
    t2 = 1;
else
    tempMatrix = indextobin(get_index_binary(A1));
    for i = 1:length(tempMatrix)
        a =length(tempMatrix) + 1 - i;
        t2 = ([t2, tempMatrix(a)]);
    end
    t2 = t2(2:end);
end
X = t2;
end

%
% Sub-Functions
%

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
%but thats another thing for another time. You could also work backwards
%and achieve the same goal.

% get the highest numvber in base 2 and will output index of where to place
% 1 in a string of zeroes ex: get_high(4) = 2 or binary: 000010 but also
% get_high(5) = 2 because its 2 and then 1

% if 0 code will return 'DONE'

function [out] = get_high(in)
n = 1;
gotanumber = false();
tempvar = 0;
if in == 0
    tempvar = 'DONE';
elseif in == 1
    tempvar = 0;
else
    while gotanumber == false()
        if (2)^n > in
            tempvar = n-1;
            gotanumber = true();
        end
        n = n+1;
    end
end
out = tempvar;
end

function [output3] = indextobin(input3)
 % function that changes index matrix [7,4,3,1] to flipped binary
 % [0,1,0,1,1,0,0,1]. Note that index of 0 exists
 tempmatrix4 = input3 +1;
 index_second_matrix = 0;
 tempmatrix3 = zeros(1,tempmatrix4(1));
 for index_second_matrix = index_second_matrix:tempmatrix4(1)
     for i = 1:length(tempmatrix4) %checks every value for index if true then replace 0 by 1
         if index_second_matrix == tempmatrix4(i)
             tempmatrix3(index_second_matrix) = 1;
         end
     end
 end
 output3 = tempmatrix3;
end


