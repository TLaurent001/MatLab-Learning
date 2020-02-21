% this program gets an aprox of e^x for whatever x
x = input('x value: ');
i = 0;
tempvar = 0;
while abs(exp(x)-tempvar) >= 0.00001
    if i == 0
        tempvar = 1;
    else
        tempvar = tempvar +  (x^i)/(factorial(i));
    end
    i = i +1;
end
dif = (exp(x) - tempvar);
fprintf('the difference between the actual value exp(x) and the Taylor Series expansion is %.9f ',dif)
fprintf('\n')
fprintf('The loop iterated %.f times', i-1)
fprintf('\n')