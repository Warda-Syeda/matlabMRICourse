# Part One: Understanding Structures and Cells
Most MRI datasets contain images and details of experimental setup used for acquisition and reconstruction.
Structures and cells are a convenient way of grouping heterogeneous data together into a single entity. This allows for Managing heterogeneous data of different types and sizes efficiently.

## Structures in MATLAB

In MATLAB, a '.' operator identifies a structure. A structre contains a list of fields. Each field is a variable name that stores a particular piece of data.
 
{% codesnippet "./mCode/p1.m", lines="3:9" %}{% endcodesnippet %}

Alternatively, the function 'struct' creates a structure array.  


{% codesnippet "./mCode/p1.m", lines="11:12" %}{% endcodesnippet %}
 
 It is possible to have an array of structures. 
{% codesnippet "./mCode/p1.m", lines="14:16" %}{% endcodesnippet %}

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

