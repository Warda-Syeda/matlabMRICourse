%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Matlab for MRI part 4: 3D Structural Volume and Surface Modelling
%                    developed by Rosa Shishegar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4-1: 

% Create a cube (40x40x40) and in the middle of a frame (140x140x140)

clear;
close all;
clc; 

F_dim=140;
 
[Y X Z] = meshgrid(1:F_dim,1:F_dim,1:F_dim);  %matlab saves in a different order so X must be Y

% center of your cube equal to center of the frame
centerX = F_dim/2;
centerY = F_dim/2;
centerZ = F_dim/2;
cube_dim_x = 40;
cube_dim_y = 40;
cube_dim_z = 40;
 
 
temp = zeros(F_dim,F_dim,F_dim);
temp(centerX-cube_dim_x/2:centerX+cube_dim_x/2,centerY-cube_dim_y/2:centerY+cube_dim_y/2,centerZ-cube_dim_z/2:centerZ+cube_dim_z/2 ) = 1;
My_cube = temp;

My_cube_surface = isosurface(My_cube);

figure; p = patch(My_cube_surface,'FaceColor','g');
view([45,20])
camlight(-10,10)

figure; p = patch(My_cube_surface,'FaceColor','g','EdgeColor','none');
view([45,20])
camlight(-10,10)

figure; p = patch(My_cube_surface,'FaceColor','r','EdgeColor','none','FaceAlpha',0.2);
view([45,20])
camlight(-10,10)

figure; p=patch('Faces',My_cube_surface.faces,'Vertices',My_cube_surface.vertices,'FaceColor','r','EdgeColor','none');
view([45,20])
camlight(-10,10)


%%% Number of colors must equal number of vertices or faces 

col=My_cube_surface.vertices(:,3);
p=patch('Faces',My_cube_surface.faces,'Vertices',My_cube_surface.vertices,'FaceVertexCData',col,'FaceColor','flat');

figure;p=patch('Faces',My_cube_surface.faces,'Vertices',My_cube_surface.vertices,'FaceVertexCData',col,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
view([45,20])
camlight(-10,10)

colormap(jet)
%colormap(autumn)
%colormap(spring)

Cube_ply = tri_mesh_to_ply(cube.vertices',cube.faces');
ply_write(Cube_ply,'~/Desktop/Cube.ply');
 
nii2=make_nii(cub);
save_nii(nii2,'~/Desktop/Cube.nii')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Challenges
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% Challenge 1: Making a 3D volume and 3D surface with cuboid shape.

% Part 1. 
% Using the worked example as a guide, write a script that will create a cuboid with width and depth 80 and height 40 voxels in the center of a frame with dimension (100x100x100) voxels and assign it to a variable named My_cuboid. 

cuboid_dim_y = 80;

% Part 2. 
% Extract its surface and assign it to My_cuboid_surface variable.

% Visualise the 3D surface. 


%%% Challenge 2

% Part 1: visualise the created cuboid again and color-code the width

% Part 2:visualise the surface again with its with color coded and
% different surface transparency by using 'Alpha' in patch command
% Hint: search the help documentation for patch properties


% Part 3:	Change the edges from The default color, black, to no edge displayed.
% Then Change the color distribution on each face to a smoother representation
% Hint: change patch properties EdgeColor and FaceColor  

col=My_cube_surface.vertices(:,2);
figure;p=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',col,'FaceColor','flat','EdgeColor','none','EdgeLightin','flat');
figure;p=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',col,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
axis([0 a 0 b 0 c])

% Extension Challenge:
% Part 1: Make a cylinder with radius 50 and height 200 in a frame of 240 * 240* 240
% Part 2: Repeat chalange 2 

clear
a=240;
b=240;
c=240;

H_cy=200; 
rad_cy=50;
[Y X Z] = meshgrid(1:a,1:b,1:c);  %matlab saves in a different order so X must be Y
centerX = a/2;
centerY = b/2;
centerZ = c/2;
% create for infinite height
R = sqrt((X-centerX).^2 + (Y-centerY).^2);
 
startZ = ceil(c/2) - floor(H_cy /2);
endZ = startZ + H_cy - 1;
 
% then trim it to height = H_cy
temp = zeros(a,b,h1);
temp( R(:,:,startZ:endZ)<rad_cy ) = 1;
My_cylinder(:,:,startZ:endZ) = temp;

My_cylinder_Surface=isosurface(My_cylinder);
figure
p = patch(isosurface(My_cylinder),'FaceColor','g','FaceAlpha',0.2);
%patch('Faces',f,'Vertices',v,'FaceVertexCData',col,'FaceColor','flat');

figure
%%% Number of colors must equal number of vertices or faces 

col=My_cube_surface.vertices(:,2);
figure;p=patch('Faces',My_cube_surface.faces,'Vertices',My_cube_surface.vertices,'FaceVertexCData',col,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
axis([0 F_dim 0 F_dim 0 F_dim])


Cylinder = tri_mesh_to_ply(cylinder.vertices',cylinder.faces');
ply_write(Cylinder,'~/Desktop/Cylinder.ply'); 
nii_cy=make_nii(My_cylinder);
save_nii(nii_cy,'~/Desktop/sheep_data/simulink_data/Cylinder.nii')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%break%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4-2:

% working with brain anatomical data
% camlight with no argument is same as camlight('right')

%%% Challenge3

1.	Read nifty file. 
2.	Extract its surface. 
3.	Load the curvature m file (I should creat it). 
4.	Visualise the surface and color-code its curvature. 

%%% Extension challenge 
1.	Shine light on the object from different directions
2.	Change the camera view

camlight('right')
camlight('left')

camlight(-10,10)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4-3: Convert 3D surface files to each other

%%% Challenge 4

1.	Read ply file. 
2.	Visualise it. 
3.	Transform it (30 voxels in z direction). 
4.	Save the new ply file. 
5.	Visualise the original and the transformed surfaces in one frame
6.  Convert ply file format to off. 
7.	Save it. 

x=load('~/Documents/sheep_data/fsl/analyz/registered/90_30_R_mask_nr_surfSPHARM_PDM_des');
xx=tri_mesh_to_ply(x.vertices',x.faces');
ply_write(xx,'~/Documents/sheep_data/fsl/ply/registered/new/90_R_mask.ply');


