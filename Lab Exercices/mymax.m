function mymax(a, b, c)

if  a == b && b == c && a == c
    error('All variables are equal')
end

if a == b || b == c || a == c
    disp('Note: One of the variables is equal to another variable')
end

if a > c && a > b
    fprintf ('The largest number you entered is %f \n', a)
elseif b > c && b > a
    fprintf ('The largest number you entered is %f \n', b)
elseif c > b && c > a
    fprintf ('The largest number you entered is %f \n', c)
end

if a == b
     if b > c
        fprintf ('The largest number you entered is %f \n', b)
     elseif c > b
        fprintf ('The largest number you entered is %f \n', c)
     end
end

if a == c
     if c > b
        fprintf ('The largest number you entered is %f \n', c)
     elseif b > c 
        fprintf ('The largest number you entered is %f \n', b)
     end
end

if b == c
     if b > a
        fprintf ('The largest number you entered is %f \n', b)
     elseif a > b
        fprintf ('The largest number you entered is %f \n', a)
     end
end

end

