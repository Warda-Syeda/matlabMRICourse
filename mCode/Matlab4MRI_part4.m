%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Matlab for MRI part 4: 3D Structural Volume and Surface Modelling
%                    developed by Rosa Shishegar
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4-1: 

clear;
close all;
clc; 

% Create a 40x40x40 cube in the center of a 140x140x140 frame 
frameDim=140;       % declaring frame dimensions

% Make a 3D grid
[Y X Z] = meshgrid(1:frameDim,1:frameDim,1:frameDim);  %matlab saves in a different order so X must be Y

% Define cube center aligned to the center of the frame
centerX = frameDim/2;
centerY = frameDim/2;
centerZ = frameDim/2;
xCubeDim = 40;
yCubeDim = 40;
zCubeDim = 40;
 
% Make temperory image array 
tempImage = zeros(frameDim,frameDim,frameDim);
tempImage(centerX-xCubeDim/2:centerX+xCubeDim/2, ...
          centerY-yCubeDim/2:centerY+yCubeDim/2, ...
          centerZ-zCubeDim/2:centerZ+zCubeDim/2 ) = 1;

% Create 3D cube
myCube = tempImage;

% Build 3D cube surface
myCubeSurface = isosurface(myCube);

% Visualise 3D cube surface   % Create polygons for visualising surfaces
figure; 
myCubeHandle = patch(myCubeSurface,'FaceColor','g');   % plotting surface
view([45,20])      % Setting view
camlight(-10,10)   % Adjusting camera light 

figure
% Plot surface
subplot(2,2,1)
myCubeHandle = patch(myCubeSurface,'FaceColor','g');   % plotting surface
view([45,20])      % Setting view
camlight(-10,10)   % Adjusting camera light 

%Plot surface with no edge color
subplot(2,2,2) 
myCubeHandle = patch(myCubeSurface,'FaceColor','g','EdgeColor','none');
view([45,20])
camlight(-10,10)

% Change surface color and transparency
subplot(2,2,3) 
myCubeHandle = patch(myCubeSurface,'FaceColor','r','EdgeColor','none','FaceAlpha',0.2);
view([45,20])
camlight(-10,10)

% Specify surface 'faces' and 'vertices' separately to patch
subplot(2,2,4) 
myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceColor','r','EdgeColor','none');
view([45,20])
camlight(-10,10)


% Colorcode the height of the cube

colorCode=myCubeSurface.vertices(:,3);   % Number of colors must equal number of vertices or faces
figure;
myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','flat');
view([45,20])
camlight(-10,10)
axis square

figure
myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
view([45,20])
camlight(-10,10)
axis square

% Set colormap to jet
colormap(jet)

%colormap(autumn)
%colormap(spring)

% Convert triangulated mesh to Polygon File Format .ply
myCubePly = tri_mesh_to_ply(cube.vertices',cube.faces');

% Export surface file (.ply) to current directory
ply_write(myCubePly,'myCube.ply');
 
% Create Nifti (.nii) volume file
nii2=make_nii(myCube);

% Save .nii file to current directory
save_nii(nii2,'myCube.nii')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              Challenges
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% Challenge 1: Making a cubiod shaped 3D volume and 3D surface.

% Part 1. 
% Using the worked example as a guide, write a script that creates a cuboid with 
% width and depth 80 and height 40 voxels in the center of a 100x100x100 frame 
% and assign it to a variable named MyCuboid. 

cuboid_dim_y = 80;

% Part 2. 
% Extract myCuboid surface and assign it to myCuboidSurface variable.
% Visualise the cuboid using a color of your choice.

%%% Challenge 2

% Part 1: Plot the created cuboid again and color-code the width

% Part 2: Visualise the surface again with its width color coded and
% different surface transparency by using 'Alpha' in patch command
% Hint: search documentation for patch properties

% Part 3: Change the edges from The default color, black, to no edge displayed.
% Change the color distribution on each face to a smoother representation
% Hint: change patch properties EdgeColor and FaceColor  

colorCode=myCubeSurface.vertices(:,2);
figure;myCubeHandle=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',colorCode,'FaceColor','flat','EdgeColor','none','EdgeLightin','flat');
figure;myCubeHandle=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
axis([0 frameDim 0 frameDim 0 frameDim])    % Fix axis properties to make sure a cuboid looks like a cuboid :D

% Extension Challenge:
% Part 1: Make a cylinder with radius 50 and height 200 in 240x240x240 frame. 
% Part 2: Repeat challenge 2 using the cylinder created in pervious step.
% _____________________________________________________________________________

% Cylinder cheatsheet
% Declare frame dimension
frameDim=240;

hCyliner=200;  % Cyliner height
rCyliner=50;   % Cyliner radius
[Y X Z] = meshgrid(1:frameDim,1:b,1:c);  %matlab saves in a different order so X must be Y
centerX = frameDim/2;
centerY = b/2;
centerZ = c/2;
% create for infinite height
R = sqrt((X-centerX).^2 + (Y-centerY).^2);
 
startZ = ceil(c/2) - floor(H_cy /2);
endZ = startZ + H_cy - 1;
 
% then trim it to height = H_cy
tempImage = zeros(frameDim,b,h1);
tempImage( R(:,:,startZ:endZ)<rad_cy ) = 1;
My_cylinder(:,:,startZ:endZ) = tempImage;

My_cylinder_Surface=isosurface(My_cylinder);
figure
myCubeHandle = patch(isosurface(My_cylinder),'FaceColor','g','FaceAlpha',0.2);
%patch('Faces',f,'Vertices',v,'FaceVertexCData',col,'FaceColor','flat');

figure
%%% Number of colors must equal number of vertices or faces 

colorCode=myCubeSurface.vertices(:,2);
figure;myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
axis([0 frameDim 0 frameDim 0 frameDim])


Cylinder = tri_mesh_to_ply(cylinder.vertices',cylinder.faces');
ply_write(Cylinder,'~/Desktop/Cylinder.ply'); 
nii_cy=make_nii(My_cylinder);
save_nii(nii_cy,'~/Desktop/sheep_data/simulink_data/Cylinder.nii')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%break%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4-2:

% working with brain anatomical data
% camlight with no argument is same as camlight('right')

%%% Challenge3

% 1.	Read nifty file. 
% 2.	Extract its surface. 
% 3.	Load the curvature m file (I should creat it). 
% 4.	Visualise the surface and color-code its curvature. 
% 
% %%% Extension challenge 
% 1.	Shine light on the object from different directions
% 2.	Change the camera view
% 
% camlight('right')
% camlight('left')
% 
% camlight(-10,10)
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % Part 4-3: Convert 3D surface files to each other
% 
% %%% Challenge 4
% 
% 1.	Read ply file. 
% 2.	Visualise it. 
% 3.	Transform it (30 voxels in z direction). 
% 4.	Save the new ply file. 
% 5.	Visualise the original and the transformed surfaces in one frame
% 6.  Convert ply file format to off. 
% 7.	Save it. 
% 
% x=load('~/Documents/sheep_data/fsl/analyz/registered/90_30_R_mask_nr_surfSPHARM_PDM_des');
% xx=tri_mesh_to_ply(x.vertices',x.faces');
% ply_write(xx,'~/Documents/sheep_data/fsl/ply/registered/new/90_R_mask.ply');
% 
% 
