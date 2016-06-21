addpath('gifti-1.6');
humanBrain_L_pial= gifti('humanBrain.L.pial.gii');
fcolor = [0.6 0.3 0.3];  
figure;
patch('faces', humanBrain_L_pial.faces, 'vertices', humanBrain_L_pial.vertices,'FaceColor', fcolor,'edgecolor','none', 'FaceLighting', 'gouraud','AmbientStrength', 0.9);view(-90,0);
camlight;
axis equal; axis off;
title('Fig.9')