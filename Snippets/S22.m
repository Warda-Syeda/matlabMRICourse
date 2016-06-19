% Manual ROI selection

% Displaying slice
figure
imagesc(mriImage1);

% Manually selecting ROI using roipoly
polyBW = roipoly();

% Display selected ROI Mask
figure
subplot(1,2,1)
imagesc(polyBW); colormap('gray')
axis image

% Disply selected ROI
subplot(1,2,2)
imagesc(double(polyBW).*mriImage1); colormap('gray');
axis image
