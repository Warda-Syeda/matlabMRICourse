# MRI Data Visualization 

***Author: Syeda Warda Taqdees***

***Contributor/s: Dr. Christina Tuke Flanders***


### Learning Objectives

After completing this lesson, students should be able to

*   Create a montage of MRI slice data.
*   Display MRI slice data sequentially using 'imagesc' function.
*   Create grid view of MRI slice data using 'subplot'.
*   Index MRI slice data to view in axial, coronal and sagittal directions. 
*   Take Affine transform of coronal and sagittal slices for improving image quality.
*   Display a stack of slice contours with suitable colormaps. 
_______________________________________________________________

MRI image volume-data is an 'MxNxK' dimenstional dataset, consisting of 'K' 2D images, called 'slices', of 'MxN' dimensions. Each slice in an MRI dataset has same orientation ('axial', 'coronal' or 'sagittal') depending on scanning parameters. 

MRI image dataset can be visualized in MATLAB in different ways. In this section, we will discuss the commonly used methods for visualizing MRI data. 


## Montage
A montage is created by putting together image slices into a single image. 

MATLAB function 'montage' accepts an MxNx1xK image dataset and displays multiple image frams as a montage. 'reshape()' is used to resize MRI image dataset for creating montage.

{% codesnippet "./Snippets/S13.m" %}{% endcodesnippet %}

![](./BookImages/mriMontage.jpg)

***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C4.m" %}{% endcodesnippet %}
_________________________________________________________________


## Sequential Display

In last section, we learned that 'imagesc' is a convenient way for displaying a single image slice. 'imagesc' can be paired with 'pause' command in a loop to display all image slice sequentially for viewing image slices sequentially.

{% codesnippet "./Snippets/S14.m" %}{% endcodesnippet %}

![](./BookImages/mriSliceGIF.gif)


## Slice Grid

Another way to visualize MRI data is to used 'subplot' for displaying a gird of slices. Unlike montage, that creates a single image from all slices, a slice grid displays each slice in a separate figure. This allows us to change display properties of each slice individually. 

{% codesnippet "./Snippets/S15.m" %}{% endcodesnippet %}

![](./BookImages/mriSubplot.jpg)
***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C5.m" %}{% endcodesnippet %}
_________________________________________________________________


## Coronal and Sagittal Slice Extraction

In this workshop, we are working on a 3D MRI dataset consisting of axial slices. We can extract sagittal and coronal slices from this axial data by indexing. 

{% codesnippet "./Snippets/S16.m" %}{% endcodesnippet %}

![](./BookImages/mriSliceView.jpg)
***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C6.m" %}{% endcodesnippet %}
_________________________________________________________________

{% codesnippet "./Snippets/S17.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S18.m" %}{% endcodesnippet %}

![](./BookImages/mriSliceTransformView.jpg)
***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C7.m" %}{% endcodesnippet %}
_________________________________________________________________

{% codesnippet "./Snippets/S19.m" %}{% endcodesnippet %}

***Challenge!***
_________________________________________________________________
{% codesnippet "./Snippets/C8.m" %}{% endcodesnippet %}
__________________________________________________________________

{% codesnippet "./Snippets/A1.m" %}{% endcodesnippet %}

![](./BookImages/BrainSlice.jpg)