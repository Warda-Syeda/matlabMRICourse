# MRI Images And Data Structures

***Author: Syeda Warda Taqdees***

***Contributor/s: Dr. Christina Tuke Flanders, Sila Genc***


### Learning Objectives

After completing this lesson, students should be able to

*   Identify MRI image files stored in DICOM format.
*   Load, analyze and identify the contents of MRI image files.
*   Understand MATLAB 'structure' data type.
*   Create and export NIFTI image files for FSL and MRtrix tools.  
_______________________________________________________________

***Learning objectives for sign posting***

All MRI datasets contain images and details of experimental setup used for data acquisition and reconstruction. MRI images come in a variety of formats depending on the company of the scanner used for imaging. The most commonly encountered format, DICOM, is supported by Siemens, GE and Philips scanners. Bruker scanners support 2dseq format. 

In this course, we will focus on DICOM images. However, most of the course content can be translated to MRI images in other formats with minor modifications.

## DICOM File Strucutre

DICOM images are identified by the extension '.dcm'. A DICOM file consists of a 'Header' and a 'Dataset'. 

The header contains information on the encapsulated Dataset. It consists of a File Preamble, a DICOM prefix, and the File Meta Elements. 

**Accessing DICOM Metadata**

The function 'dicominfo' reads in metadata of a DICOM file.

 {% codesnippet "./Snippets/S1.m" %}{% endcodesnippet %}

Detailed information about DICOM metadata  and how it can be used for certain tasks e.g. memory pre-allocation can be found [here](http://au.mathworks.com/company/newsletters/articles/accessing-data-in-dicom-files.html).

Alternatively, 'dicomdisp' can be used to examine file structure and contents of a DICOM file.

{% codesnippet "./Snippets/S2.m" %}{% endcodesnippet %}

![](./BookImages/DicomInfoImg.tiff)

**Loading DICOM image**

DICOM image data is read into MATLAB using 'dicomread' function.

{% codesnippet "./Snippets/S3.m" %}{% endcodesnippet %}

A quick way to check how a single image looks like is to use 'imagesc'

{% codesnippet "./Snippets/S4.m" %}{% endcodesnippet %}

![](./BookImages/SingleBrainSlice.tiff)

Generally, a single DICOM file contains a single MRI slice data. To read in MRI data for all slices, each individual DICOM files are loaded separately. 'For' loop is used to read in all data files. 

{% codesnippet "./Snippets/S5.m" %}{% endcodesnippet %}

***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C1.m" %}{% endcodesnippet %}
_________________________________________________________________

## Structures in MATLAB

Structures are a convenient way of grouping heterogeneous data together into a single entity.

In MATLAB, a dot operator '.' identifies a structure. A structure contains a list of fields. Each field is a variable name that stores a particular piece of data. Structures can be used to store images and metadata.
 
{% codesnippet "./Snippets/S6.m" %}{% endcodesnippet %}

Structures can store heterogeneous data in their fields.

{% codesnippet "./Snippets/S7.m" %}{% endcodesnippet %}

Alternatively, the function 'struct' creates a structure array.

{% codesnippet "./Snippets/S8.m" %}{% endcodesnippet %}
 
 It is possible to have an array of structures. 

{% codesnippet "./Snippets/S9.m" %}{% endcodesnippet %}

***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C2.m" %}{% endcodesnippet %}
__________________________________________________________________


## Exporting MRI Data

The Neuroimaging Informatics Technology Initiative (NIfTI) file format is the most commonly used volume-file format supported by popular MRI softwares such as FSL, AFNI and MRtrix. 

MATLAB has not naturalized NIfTI format yet. This means that it does not provide built-in functions for making, viewing, loading and storing NIfTI files. However, toolboxes for NIfTI files are freely available on MATHWORKS. For this workshop, we have provided a set of NIfTI functions in the folder 'Helper Functions' present in the lesson repository. 

To make a NIfTI object in MATALB, the function 'make_nii' is used. 

{% codesnippet "./Snippets/S10.m" %}{% endcodesnippet %}

The NIfTI object returned by 'make_nii' can be stored in a file outside MATLAB using 'save_nii'.

{% codesnippet "./Snippets/S11.m" %}{% endcodesnippet %}

Similarly, to load image data from a NIfTI file, 'load_nii' is used. 

{% codesnippet "./Snippets/S12.m" %}{% endcodesnippet %}
***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C3.m" %}{% endcodesnippet %}
_________________________________________________________________


## Online Resources

1. [Overview of DICOM file format](https://www.leadtools.com/help/leadtools/v19/dicom/clib/introstruct.html)
2. [Detailed DICOM file format](http://dicom.nema.org/dicom/2013/output/chtml/part10/PS3.10.html)






