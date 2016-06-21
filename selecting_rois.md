# Masks and Region Of Interests (ROIs)

***Author: Syeda Warda Taqdees***

***Contributor/s: Dr. Christina Tuke Flanders***


### Learning Objectives

After completing this lesson, students should be able to

*   Create a montage of MRI slice data.
*   Display MRI slice data sequentially using 'imagesc' function.
*   Create grid view of MRI slice data using 'subplot'.
*   Index MRI slice data to view in axial, coronal and sagittal directions. 
*   Take Affine transform of coronal and sagittal slices for improving image quality.
*   Display a stack of slice contours with suitable colormaps 

{% codesnippet "./Snippets/S20.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S21.m" %}{% endcodesnippet %}

![](./BookImages/maskManuElip.jpg)

{% codesnippet "./Snippets/S22.m" %}{% endcodesnippet %}

![](./BookImages/maskManuRoiploy.jpg)

{% codesnippet "./Snippets/S23.m" %}{% endcodesnippet %}

![](./BookImages/maskManuMultiRoipoly.jpg)

{% codesnippet "./Snippets/C9.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S24.m" %}{% endcodesnippet %}

![](./BookImages/maskManuFreehand.jpg)

{% codesnippet "./Snippets/C10.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S25.m" %}{% endcodesnippet %}

![](./BookImages/maskAutoElips.jpg)


### Semi-automatic Brain Extraction



{% codesnippet "./Snippets/S26.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S28.m" %}{% endcodesnippet %}

![](./BookImages/brainHist.jpg)

{% codesnippet "./Snippets/S27.m" %}{% endcodesnippet %}

![](./BookImages/brainMesh.jpg)

{% codesnippet "./Snippets/S29.m" %}{% endcodesnippet %}

![](./BookImages/brainExtractMask.jpg)

{% codesnippet "./Snippets/S30.m" %}{% endcodesnippet %}

![](./BookImages/brainExtractClean.jpg)

{% codesnippet "./Snippets/S31.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S32.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S33.m" %}{% endcodesnippet %}

{% codesnippet "./Snippets/S34.m" %}{% endcodesnippet %}

![](./BookImages/brainExtractFill.jpg)

A summary of semi-automatic brain extraction pipeline is presented in the montage below.

![](./BookImages/brainExtractMontage.jpg)

{% codesnippet "./Snippets/C11.m" %}{% endcodesnippet %}