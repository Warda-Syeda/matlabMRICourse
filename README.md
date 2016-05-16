# MATLAB for MRI Applications {#matlab-for-mri}

**MATLAB for Magnetic Resonance Imaging Applications**

**Part 1: Introduction of MATLAB environment**

**Learning Objectives**

By the end of this lesson students should be able to

*   Develop sufficient knowledge of MATLAB command window and development environment.
*   Develop understanding of MATALB variables, vectors, arrays and structs and cell arrays.
*   Apply fundamental programming concepts such as loops and conditionals to solve given problems.

**Part 2: MRI Images and Data Structures**

**Learning Objectives**

After completing this lesson, students should be able to

*   Identify Siemens DICOM and Bruker’s 2dseq MRI image files.
*   Analyse and identify the contents of MRI image files.
*   Create NIFTI image files for FSL and MRtrix tools.
*   Select and extract Regions of interest and image slices from multidimensional datasets.
*   Apply data visualisation techniques for presenting 4D or 5D MRI images.

**Part 3: MATLAB for Structural MRI**

**Learning Objectives**

After finishing this lesson, the students should be able to

*   Demonstrate basic knowledge of structural DW-MRI image files.
*   Build bvecs and bvals files for DWI protocols.
*   Obtain DWI signal from each voxel in a given dataset.
*   Estimate noise levels in DWI signal and obtain clean signal.
*   Analyse and identify trends in DWI signals.
*   Fit simple DWI models to data using MATLAB’s curve-fitting toolbox.

**Part 4: MATLAB for Functional MRI**

**Learning Objectives**

At the end of this lesson, the students should be able to

**Notes**

**Part 1**

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

1.  Convert the structure from pervious challenge to a cell array and name it myImageCell.
2.  Display the 2-D image located at (: , : ,1) in Img field and change the colormap to gray
3.  Calculate mean image using cellfun
4.  Add the mean image to myImageCell
5.  Save myImageCell in .mat file in current directory

Loops and Conditionals with main focus on cells and structs

Challenge 3

Challenge about creating 2-3 similar structs and cells as previous challenges and looping through them. Display images only if certain conditions are met.

**Part 2**

Show and discuss example DICOM and 2dseq images, import/ read them in MATLAB

Convert them into Nifti files

Challenge 4

1.  Convert myImage.Img to a Nifti file
2.  Export Nifti file from MATLAB
3.  Read it in again and display in MATLAB

Show manual ROI selection techniques in different directions etc.

Challenge 5

List of online MATALB toolboxes

[http://www.cise.ufl.edu/~abarmpou/lab/fanDTasia/tutorial.php](http://www.cise.ufl.edu/~abarmpou/lab/fanDTasia/tutorial.php)

[http://brainimaging.waisman.wisc.edu/~chung/DTI/2012.07.09.NIMS.DTI.tutorial.pdf](http://brainimaging.waisman.wisc.edu/~chung/DTI/2012.07.09.NIMS.DTI.tutorial.pdf)