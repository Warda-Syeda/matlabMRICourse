colorCode=myCubeSurface.vertices(:,3);   % Number of colors must equal number of vertices or faces
figure;
patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','flat','EdgeColor','none');
view([45,20])
camlight(-10,10)
axis equal
title('Fig.3')