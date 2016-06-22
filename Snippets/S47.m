figure
% Plot surface
subplot(2,2,1)
patch(myCubeSurface,'FaceColor','g');   % plotting surface
view([45,20])      % Setting view
camlight(-10,10)   % Adjusting camera light 
axis equal
title('Fig.2-1')

%Plot surface with no edge color
subplot(2,2,2) 
patch(myCubeSurface,'FaceColor','g','EdgeColor','none');
view([45,20])
% camlight with no argument is same as camlight('right') %%%add more explanation
camlight(-10,10)
axis equal
title('Fig.2-2')