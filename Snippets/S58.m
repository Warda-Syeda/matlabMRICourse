[humanBrain_L_white.faces,humanBrain_L_white.vertices]=ply_read('humanBrain.L.white.ply','tri');
load('humanBrainCurvature');
figure;
patch('faces', humanBrain_L_white.faces', 'vertices', humanBrain_L_white.vertices','FaceVertexCData', humanBrainCurvature,'edgecolor','none','FaceColor','interp', 'FaceColor','interp','FaceLighting', 'gouraud','AmbientStrength', 0.9);view(-90,0);
camlight;
axis equal; axis off;
title('Fig.8')