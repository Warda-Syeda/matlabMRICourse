% Creating binary mask
normBW = im2bw(normMriImage1,0.15);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(normBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(normBW).*normMriImage1);colormap('gray');
