# Part Six: 3D Structural Modeling

Anatomical volume is a set of 2D binary masks created from CT or MRI scanner data. The surface model extraction and visualization is commonly used to study the geometry of anatomical structures. In this part, we will study about making 3D volumes and surfaces using MATLAB.



### 3D volume and 3D Surface

We are going to create simulated cube volume. 

!!! Add Code here !!!

To create a surface from the simulated volume data, 'isosurface' is used. This function accepts a 3D volume and returns faces and vertices of the constructed surface.

!!! Add Code here !!!

To display the constructed surface, 'patch' function creates and visualizes  polygons defined by the faces and vertices of the isosurface. 

!!! Add Code here !!!

Certain functions such as 'view', 'camlight' and 'axis' can be used to visually improve the displayed surface. 

!!! Add Code here !!!

Changing patch properties allows us to control and change appearance and behavior of the 3D surface. For instance, 'FaceColor' sets the color of the polygons. 'Edgecolor' controls the color of polygon edges. 

!!! Add Code here !!!









