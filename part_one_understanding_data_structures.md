# Part One: Understanding Structures and Cells

This is a code snippet:
 
{% codesnippet "./myfile.m", lines="1:4" %}{% endcodesnippet %}

Explain Command window

Commands – clc, clear, close, whos

MATLAB basic variables, vectors and arrays

MATLAB data structures

Grouping data into a single entity

Manage heterogeneous data of different types and sizes

Example

>> Person1.FirstName = ‘Jane’

>> Person1.LastName = ‘Doe’

>> Person1.PassportNum = 12345

>> Person1.DOB = ‘01/01/2001’

>> Person1.Marks = [90 30 100]

Structure Arrays

>> Directory(1).Person = Person1

>> Directory(2).Person = Person2

Challenge 1

1\. Load Ex_Struct1.mat and examine the fields of the structure myData.

2\. Create a structure called myImage with following fields

Img – a 3D image (You can use MATLAB’s in-build function ‘magic’ to fill image)

Dim – a vector containing dimensions of the image

ColorMap – Colormap of the image

Date – Date the image was created

ID – A unique image ID

3\. Save myImage structure as a .mat file in current directory

Cells

>> Names = [‘Joe’ ;‘Jane’;’John’]

>> Names = ['Joe' 'Jane''John']

>> Names = {'Joe' 'Jane' 'John'}

% Other Examples: Region Names, Dataset Names, Data Properties etc

Mixed Data types in cells

>> Names = ['Joe' 'Jane' 'John' 100]

>> Names = {'Joe' 'Jane' 'John' 100}

Indexing in cells

Cell Indexing with Smooth Parentheses, ()

Content Indexing with Curly Braces, {}

cellfun

Links to MATLAB help

[http://au.mathworks.com/help/matlab/matlab_prog/multilevel-indexing-to-access-parts-of-cells.html](http://au.mathworks.com/help/matlab/matlab_prog/multilevel-indexing-to-access-parts-of-cells.html)

[http://au.mathworks.com/help/matlab/matlab_prog/access-data-in-a-cell-array.html](http://au.mathworks.com/help/matlab/matlab_prog/access-data-in-a-cell-array.html)

Challenge 2

1.  Convert the structure from previous challenge to a cell array and name it myImageCell.
2.  Display the 2-D image located at (: , : ,1) in Img field and change the colormap to gray
3.  Calculate mean image using cellfun
4.  Add the mean image to myImageCell
5.  Save myImageCell in .mat file in current directory

Loops and Conditionals with main focus on cells and structs

Challenge 3

Challenge about creating 2-3 similar structs and cells as previous challenges and looping through them. Display images only if certain conditions are met.

