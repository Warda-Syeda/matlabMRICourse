figure;
patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none');
% myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
view([45,20])
camlight(-10,10)
axis equal
title('Fig.4')