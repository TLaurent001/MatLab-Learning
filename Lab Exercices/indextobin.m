function [output3] = indextobin(input)
 % function that changes index matrix [7,4,3,1] to flipped binary
 % [0,1,0,1,1,0,0,1]. Note that index of 0 exists
 tempmatrix4 = input +1;
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
 