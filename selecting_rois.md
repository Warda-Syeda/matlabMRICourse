# Masks and Region Of Interests (ROIs)

***Author: Syeda Warda Taqdees***

***Contributor/s: Dr. Christina Tuke Flanders***


### Learning Objectives

After completing this lesson, students should be able to

*   Select an elliptical ROI manually and display it.
*   Manually select a polygonal ROI and adjust its shape interactively.
*   Create draggable freehand region on MRI slice data.
*   Sequentially delineate ROIs in multiple MRI slices.
*   Select and store multiple ROIs on a single image.
*   Learn to use 'regionprops' for measuring properties of image regions.
*   Extract brain and perform skull removal on brain MRI data semi-automatically. 
_____________________________________________________________


### Manual Image Masks

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