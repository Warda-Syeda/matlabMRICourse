# Part Six: 3D Structural Modeling

Anatomical volume is a set of 2D binary masks created from CT or MRI scanner data. The surface model extraction and visualization is commonly used to study the geometry of anatomical structures. In this part, we will study about making 3D volumes and surfaces using MATLAB.



### 3D volume and 3D Surface

We are going to create simulated cube volume. 

!!! Add Code here !!!

To create a surface from the simulated volume data, 'isosurface' is used. This function accepts a 3D volume and returns faces and vertices of the constructed surface.

!!! Add Code here !!!

To display the constructed surface, 'patch' function creates and visualizes  polygons defined by the faces and vertices of the isosurface. 

!!! Add Code here !!!








