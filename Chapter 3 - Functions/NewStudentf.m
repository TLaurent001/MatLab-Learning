function [Output_Array] = NewStudentf(names, id, grades)

Output_Array = struct('Student', names, 'Id', id, 'GPA', grades);

end