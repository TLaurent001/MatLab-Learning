function [root] = findroots(x, y, tol)

% finding all possible POI (point of interest)

% First init
tempCell = {nan};
tempmatrix = nan;
count = 1;
for i = 1:(length(x)-1)
    % if f(a) or f(b) = 0 then you got it get to the next one
    a2 = y(x(i));
    b2 = y(x(i+1));
    if y(x(i)) == 0
        tempCell(count) = {x(i)};
        count = count+1;
    elseif y(x(i+1)) == 0
        tempCell(count) = {x(i+1)};
        count = count+1;
    elseif (is_negative(a2) == true() && is_negative(b2) == false())
        tempCell(count) = {[x(i),x(i+1)]};
        count = count+1;
    elseif (is_negative(a2) == false() && is_negative(b2) == true())
        tempCell(count) = {[x(i),x(i+1)]};
        count = count+1;
    end
end

for n = 1:length(tempCell)
    running = true;
    tempvar = cell2mat(tempCell(n));
    if length(tempvar) == 1
        tempmatrix = [tempmatrix, tempvar];
    else
        a2 = tempvar(1);
        b2 = tempvar(2);
        while running == true()
            c = ((a2+b2)/2);
            if abs(y(c)) < tol
                tempmatrix = [tempmatrix, c];
                running = false();
            else
                if is_negative(y(b2)-y(a2)) == true()
                     % Then it's a negative slope
                    if is_negative(y(c)) == true()
                        b2 = c;
                    else
                        a2 = c;
                    end
                else
                     % Then it's a possitive slope
                     if is_negative(y(c)) == true()
                         a2 = c;
                     else
                         b2 = c;
                     end
                end
            end
        end
    end
end

root = tempmatrix(2:end);

end

%tempCell = tempCell
% Bisection method activation


% This Function looks if a number is negative. No additional info, it's
% self-explanatory

function [output] = is_negative(input)

if isreal(sqrt(input))
    output = false();
else
    output = true();
end
end

    