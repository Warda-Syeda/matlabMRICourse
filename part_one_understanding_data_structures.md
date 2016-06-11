# Part One: Understanding MRI Data
Most MRI datasets contain images and details of experimental setup used for data acquisition and reconstruction. MRI images come in a variety of formats depending on the company of the scanner used for imaging.  The most commonly encountered format , DICOM, is supported by Siemens, GE and Philips scanners. Bruker scanners support 2dseq format. 

In this course, we will focus on DICOM images. However, most of the course content can be translated to MRI images in other formats with minor modifications.

## DICOM File Strucutre

DICOM images are identified by the extension '.dcm'. A DICOM file consists of 'Header' and 'Dataset'. 

The header consists of a 128 byte Preamble and a 4 byte DICOM prefix.
The File Meta Information includes identifying information on the encapsulated Data Set. This header consists of a 128 byte File Preamble, followed by a 4 byte DICOM prefix, followed by the File Meta Elements shown in Table 7.1-1. This header shall be present in every DICOM file.

The function 'dicominfo' reads in metadata of a DICOM file.

Detailed information about DICOM metadata  and how is can be used for certain tasks e.g. memory pre-allocation is [here].(http://au.mathworks.com/company/newsletters/articles/accessing-data-in-dicom-files.html) .

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


## Online Resources

1.  [Overview of DICOM file format](https://www.leadtools.com/help/leadtools/v19/dicom/clib/introstruct.html)
2. [Detailed DICOM file format](http://dicom.nema.org/dicom/2013/output/chtml/part10/PS3.10.html)



