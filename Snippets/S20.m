% Manual ROI selection

% Displaying Figure
figure;
imagesc(mriImage1);

% Manually creating elliptical ROI binary mask
hElips = imellipse();
elipsBW = createMask(hElips);

