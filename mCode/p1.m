% Part 1: Understanding structures and cells

% Structs are defined using '.'
Person1.FirstName = 'Jane';
Person1.LastName = 'Doe';

% A single struct can store different data types
Person1.PassportNum = 12345;
Person1.DOB = '01/01/2001';

% An array of structures
Directory(1).Person = Person1;
Directory(2).Person = Person2;