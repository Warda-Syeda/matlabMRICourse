% Specify surface 'faces' and 'vertices' separately to patch
subplot(2,2,4) 
patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceColor','r','EdgeColor','none');
view([45,20])
camlight(-10,10)
axis equal
title('Fig.2-4')