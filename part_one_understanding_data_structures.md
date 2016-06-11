# Part One: Understanding MRI Data
Most MRI datasets contain images and details of experimental setup used for data acquisition and reconstruction. MRI images come in a variety of formats depending on the company of the scanner used for imaging.  The most commonly encountered format , DICOM, is supported by Siemens, GE and Philips scanners. Bruker scanners support 2dseq format. 

In this course, we will focus on DICOM images. However, most of the course content can be translated to MRI images in other formats with minor modifications.

## DICOM Images

DICOM images are identified by the extension '.dcm'. 

The function 'dicominfo' reads in metadata of a DICOM file.




Structures are a convenient way of grouping heterogeneous data together into a single entity. This allows for Managing heterogeneous data of different types and sizes efficiently.

## Structures in MATLAB

In MATLAB, a dot operator '.' identifies a structure. A structure contains a list of fields. Each field is a variable name that stores a particular piece of data.
 
{% codesnippet "./mCode/p1.m", lines="3:8" %}{% endcodesnippet %}

Alternatively, the function 'struct' creates a structure array.  


{% codesnippet "./mCode/p1.m", lines="9:10" %}{% endcodesnippet %}
 
 It is possible to have an array of structures. 

{% codesnippet "./mCode/p1.m", lines="11:13" %}{% endcodesnippet %}

Challenge 1

{% codesnippet "./mCode/p1.m", lines="20:27" %}{% endcodesnippet %}


