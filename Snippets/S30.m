% clean mask of small areas
cleanBW = bwareaopen(normBW,500);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(cleanBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(cleanBW).*normMriImage1);colormap('gray');

