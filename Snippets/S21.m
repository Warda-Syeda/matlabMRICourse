% Displaying binary mask
figure
subplot(1,2,1)
imagesc(elipsBW); colormap('gray')
axis image

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(elipsBW).*mriImage1)
axis image
