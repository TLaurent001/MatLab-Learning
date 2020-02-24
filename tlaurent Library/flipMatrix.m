function [flipped_matrix] = flipMatrix(Matrix)

% This function serves to flip matrix from left to right. For example: a 
% matrix [1,4,4,5,6] will become [6,5,4,4,1]. This works for any matrices
% of any dimension

sizeM = size(Matrix);
flipped_matrix = Matrix;

% recall that size(1) = rows and size(2) = collums

for i = 1:sizeM(1)
    for j = 1:sizeM(2)
        flipped_matrix(i,j) = Matrix(i,(sizeM(2)+1-j));
    end
end

end


        
        