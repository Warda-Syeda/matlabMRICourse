% imfreehand can also be used to manually select an ROI

% Displaying slice for ROI selection
figure;
imagesc(mriImage1);

% selecting and creating ROI mask
hFree = imfreehand();
freeBW = createMask(hFree);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(freeBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(freeBW).*mriImage1);colormap('gray');
