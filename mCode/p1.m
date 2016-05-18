% Part 1: Understanding structures and cells
a=1;
% Structs are defined using '.'
Person1.FirstName = 'Jane';
Person1.LastName = 'Doe';
% A single struct can store different data types
Person1.PassportNum = 12345;
Person1.DOB = '01/01/2001';
% Funtion struct creates a structure array
Person2 = struct('FirstName','John','LastName','Doe','PassportNum',67891,'DOB','30/01/2001');
% An array of structures
Directory(1).Person = Person1;
Directory(2).Person = Person2;