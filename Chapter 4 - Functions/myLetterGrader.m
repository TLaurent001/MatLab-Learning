function [grade] = myLetterGrader(percent)

Tempcell = {'A+', 'A' ,'A-', 'B+', 'B' ,'B-', 'C+', 'C' ,'C-','D+', 'D' ,'D-','F';100,97,93,90,87,83,80,77,73,70,67,63,60};

tempvar = 0;

i = 1;
if percent >= 97
    grade = 'A+';
elseif percent <= 60
    grade = 'F';
else
    while i < 12 && tempvar == 0
        if percent < cell2mat(Tempcell(2,i+1)) && percent >= cell2mat(Tempcell(2,i+2))
            grade = cell2mat(Tempcell(1,i+1));
        end
        i = i + 1;
    end
end

% cell2mat is a function that turns cell data into vector/matrix type to
% use in if/for/while statements

end
