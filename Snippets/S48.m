% Change surface color and transparency
subplot(2,2,3) 
patch(myCubeSurface,'FaceColor','r','EdgeColor','none','FaceAlpha',0.2);
view([45,20])
camlight(-10,10)
axis equal
title('Fig.2-3')