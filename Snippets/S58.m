[humanBrain_L_white.faces,humanBrain_L_white.vertices]=ply_read('humanBrain.L.white.ply','tri');
load('humanBrainCurvature_L_white');
figure;
patch('faces', humanBrain_L_white.faces', 'vertices', humanBrain_L_white.vertices','FaceVertexCData', humanBrainCurvature,'edgecolor','none','FaceColor','interp', 'FaceColor','interp','FaceLighting', 'gouraud','AmbientStrength', 0.9);view(-90,0);
camlight;
colormap('jet');
axis equal; axis off;
title('Fig.8')