function fizzbuzz(n)

for i = 1:n
    if mod(i,3) == 0
        if mod(i,5) == 0 
            fprintf('fizzbuzz, ')
        else
            fprintf('fizz, ')
        end
    elseif mod(i,5) == 0
        fprintf('buzz, ')
    else
        fprintf('%.f, ',i)
    end
end
fprintf('\n')

end