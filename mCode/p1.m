% Part 1: Understanding structures and cells

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

% Challenge 

%Create a structure called myImage with following fields
%Img: a 3D image (You can use MATLAB?s in-build function ?magic? to fill image)
%Dim: a vector containing dimensions of the image
%ColorMap: Colormap of the image
%Date: Date the image was created
%ID: A unique image ID

%Save myImage structure as a .mat file in current directory

