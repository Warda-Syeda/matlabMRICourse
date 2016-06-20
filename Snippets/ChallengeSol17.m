% Challenge3 cheatsheet

sheepBrain_nii=load_nii('sheepBrain.nii');
sheepBrainSurface=isosurface(sheepBrain.img);
load('sheepBrainCurvature');
figure
myCubeHandle=patch('Faces',myCubeSurface.faces,'Vertices',myCubeSurface.vertices,'FaceVertexCData',colorCode,'FaceColor','interp','EdgeColor','none','EdgeLightin','flat');
colorbar
view([90,0])
camlight(-10,10)
camlight('right')
camlight('left')
axis square

humanBrain_l= gifti('humanBrain.L.surf.gii');
humanBrain_r= gifti('humanBrain.R.surf.gii');
figure; patch('faces',humanBrain_l.faces,'vertices',humanBrain_l.vertices,'facecolor','g','edgecolor','none');view(-90,0);camlight
hold on; patch('faces',humanBrain_r.faces,'vertices',humanBrain_r.vertices,'facecolor','g','edgecolor','none');view(-90,0);camlight
