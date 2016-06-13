# Part Six: 3D Structural Modeling

Anatomical volume is a set of 2D binary masks created from CT or MRI scanner data. The surface model extraction and visualization is commonly used to study the geometry of anatomical structures. In this part, we will study about making 3D volumes and surfaces using MATLAB.



### 3D volume and 3D Surface

We are going to create simulated cube volume. 

!!! Add Code here !!!

To create a surface from the simulated volume data, 'isosurface' is used. This function accepts a 3D volume and returns faces and vertices of the constructed surface in the form of a triangulated mesh.

!!! Add Code here !!!

To display the constructed surface, 'patch' function creates and visualizes  polygons defined by the faces and vertices of the isosurface. 

!!! Add Code here !!!

Certain functions such as 'view', 'camlight' and 'axis' can be used to visually improve the displayed surface. 

!!! Add Code here !!!

Changing patch properties allows us to control and change appearance and behavior of the 3D surface. For instance, 'FaceColor' sets the color of the polygons. 'Edgecolor' controls the color of polygon edges. 

!!! Add Code here !!!

Sometimes, one surface could be hidden behind another surface. Setting 'FaceAlpha' property allows us to control the level of transparency of the object thus making it possible to view the hidden details. 

!!! Add Code here !!!

'patch' also accepts separately specified faces and vertices  apart from accepting an whole surface object created by 'isosurface' fucntion.

!!! Add Code here !!!

Instead of using one color for all faces/vertices of the surface, 'FaceVertixCData' property sets one color per face/vertex. It is an important property to visualize surface geometrical features.  

!!! Add Code here !!!

Predefined MATLAB colormaps can be used to color-code the surface. 

After color-coding the surface, it is useful to separately display a colorbar so that the meaning of each color can easily be understood. A colorbar can be displayed by using the funciton 'colorbar' or pushing the colorbar icon in the figure toolbar. 

!!! Add Code here !!!

To save a created surface, the triangulated mesh can be converted to commonly used surface file formats such as Polygon File Format (.ply). The function tri_mesh_to_ply accepts a surface object and returns a PLY format structure.

!!! Add Code here !!!

The PLY structure can be saved outside MATLAB using the function 'ply_write'. 

!!! Add Cod here !!!

Similarly the simulted volume can be saved as a nifti file for future use. 

!!!

**Helper functions**
