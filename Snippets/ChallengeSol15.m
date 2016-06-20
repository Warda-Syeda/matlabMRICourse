colorCode=myCubeSurface.vertices(:,2);
figure;myCubeHandle=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',colorCode,'FaceColor','flat','EdgeColor','none','EdgeLightin','flat');
figure;myCubeHandle=patch('Faces',My_cuboid_surface.faces,'Vertices',My_cuboid_surface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
axis equal    % Set axis properties to make sure a cuboid looks like a cuboid :D


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Challenge 1-2 (Cuboid) cheatsheet

cuboid_dim_y = 80;

% Extended challenge (Cylinder) cheatsheet
% Declare frame dimension
frameDim=240;

hCyliner=200;  % Cyliner height
rCyliner=50;   % Cyliner radius

[Y X Z] = meshgrid(1:frameDim,1:frameDim,1:frameDim);  %matlab saves in a different order so X must be Y
centerX = frameDim/2;
centerY = frameDim/2;
centerZ = frameDim/2;

% create for infinite height
R = sqrt((X-centerX).^2 + (Y-centerY).^2);
 
startZ = ceil(c/2) - floor(hCyliner /2);
endZ = startZ + hCyliner - 1;
 
% then trim it to height = hCyliner
tempImage = zeros(frameDim,frameDim,hCyliner);
tempImage( R(:,:,startZ:endZ)<rCyliner ) = 1;
myCylinder(:,:,startZ:endZ) = tempImage;

myCylinderSurface=isosurface(myCylinder);
figure
myCubeHandle = patch(isosurface(myCylinder),'FaceColor','g','FaceAlpha',0.2);
%patch('Faces',f,'Vertices',v,'FaceVertexCData',col,'FaceColor','flat');

figure
colorCode=myCylinder.vertices(:,2);
figure;myCylinderHandle=patch('Faces',myCylinderSurface.faces,'Vertices',myCylinderSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
axis([0 frameDim 0 frameDim 0 frameDim])


myCylinder_ply = tri_mesh_to_ply(myCylinderSurface.vertices',myCylinderSurface.faces');
ply_write(myCylinder_ply,'Cylinder.ply');
myCylinder_nii=make_nii(myCylinder);
save_nii(myCylinder_nii,'Cylinder.nii')