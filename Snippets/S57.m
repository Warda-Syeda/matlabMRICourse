[femurSurface.faces,femurSurface.verices]=stlread('femurSurface.stl');
figure
patch('Faces',femurSurface.faces,'Vertices',femurSurface.vertices,'FaceColor','y',...
'EdgeColor', 'none');
camlight(-10,10)
axis equal
title('Fig.7')