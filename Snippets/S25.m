% semi-automatic ROI selection

% Automatic ROI selection using imellipse

figure;
imagesc(mriImage1);

% Creating elliptical binary mask
elipsAutoPosition = [150 150 200 200];
autoElipseBW = createMask(imellipse(gca,elipsAutoPosition));

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(autoElipseBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(autoElipseBW).*mriImage1);colormap('gray');
