% Reading nifty file sheepBrain.nii then assigning it to variable sheepBrain_nii
sheepBrain_nii=load_nii('sheepBrain.nii');
% Extracting its surface and assigning it to sheepBrainSurface variable
sheepBrainSurface=isosurface(sheepBrain_nii.img);
load('sheepBrainCurvature')
% Visualising the brain surface and colorcode its curvature
figure
patch('Faces',sheepBrainSurface.faces,'Vertices',sheepBrainSurface.vertices,'FaceVertexCData',sheepBrainCurvature,'EdgeColor','none','FaceColor','interp','FaceLighting', 'gouraud');
view([-25,10])
camlight(-10,10)
axis equal
axis off
title('Fig.6')