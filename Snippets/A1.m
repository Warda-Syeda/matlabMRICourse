% 'contourslice' can be used to display stack of slice contours

figure
cm = gray(50);
cHandle = contourslice(mriImage,[],[],[1 5 15],8);
colormap(cm)
set(cHandle,'FaceColor','interp')