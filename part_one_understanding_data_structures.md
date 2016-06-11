# Part One: Understanding MRI Data
Most MRI datasets contain images and details of experimental setup used for data acquisition and reconstruction. MRI images come in a variety of formats depending on the company of the scanner used for imaging.  The most commonly encountered format , DICOM, is supported by Siemens, GE and Philips scanners. Bruker scanners support 2dseq format. 

In this course, we will focus on DICOM images. However, most of the course content can be translated to MRI images in other formats with minor modifications.

## DICOM File Strucutre

DICOM images are identified by the extension '.dcm'. A DICOM file consists of 'Header' and 'Dataset'. 

The header contains information on the encapsulated Dataset and is generally composed of a File Preamble, a DICOM prefix, and the File Meta Elements. 

**Accessing DICOM Metadata**

The function 'dicominfo' reads in metadata of a DICOM file.

!!!! Insert Code here !!!!

Detailed information about DICOM metadata  and how it can be used for certain tasks e.g. memory pre-allocation is [here].(http://au.mathworks.com/company/newsletters/articles/accessing-data-in-dicom-files.html) .

Alternatively, 'dicomdisp' can be used to examine file structure and contents of a DICOM file.

!!!! Insert code here !!!!

**Loading DICOM image**

DICOM image data is read into MATLAB using 'dicomread' function.

!!!! insert code here !!!!

A quick way to check how a single image looks like is to use 'imagesc'

!!!! insert code here !!!!

## Structures in MATLAB

Structures are a convenient way of grouping heterogeneous data together into a single entity.

In MATLAB, a dot operator '.' identifies a structure. A structure contains a list of fields. Each field is a variable name that stores a particular piece of data.
 
{% codesnippet "./mCode/p1.m", lines="3:8" %}{% endcodesnippet %}

Alternatively, the function 'struct' creates a structure array.  


{% codesnippet "./mCode/p1.m", lines="9:10" %}{% endcodesnippet %}
 
 It is possible to have an array of structures. 

{% codesnippet "./mCode/p1.m", lines="11:13" %}{% endcodesnippet %}

Challenge 1

{% codesnippet "./mCode/p1.m", lines="20:27" %}{% endcodesnippet %}


## Online Resources

1. [Overview of DICOM file format](https://www.leadtools.com/help/leadtools/v19/dicom/clib/introstruct.html)
2. [Detailed DICOM file format](http://dicom.nema.org/dicom/2013/output/chtml/part10/PS3.10.html)



