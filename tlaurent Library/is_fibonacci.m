function [output] = is_fibonacci(input)

previousvalue = 0;
currentvalue = 1;
tf = false();

while currentvalue < input+1
    tempvar = previousvalue + currentvalue;
    if (previousvalue + currentvalue) == input
        tf = true();
    end
    previousvalue = currentvalue;
    currentvalue = tempvar;
end

output = tf;
end