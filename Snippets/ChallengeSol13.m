%%%%%%%% Mega Challenge Solution %%%%%%%%%

% Creating binary mask
normBW = im2bw(normMriImage2,0.5);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(normBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(normBW).*normMriImage2);colormap('gray');

% clean mask of small areas
cleanBW = bwareaopen(normBW,1000);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(cleanBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(cleanBW).*normMriImage2);colormap('gray');

% Select Region with largest area

% Label Regions
labelBW = bwlabel(cleanBW);

% Calculate number of voxels in each region
regStats = regionprops(cleanBW,'area');
allAreas = [regStats.Area];

% Arrange areas in descending orders
[eyeArea eyeInd] = sort(allAreas,'descend');

% Extract the eye regions using ismember()
for iEye = 1:2
eyeRegion = ismember(labelBW, eyeInd(iEye));

% Convert from integer labeled image into binary image.
eyeBWs(:,:,iEye) = eyeRegion > 0;
end
eyeBW = sum(eyeBWs,3);

% Fill holes in brain mask
fillEyeBW = imfill(eyeBW,'holes');

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(fillEyeBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(fillEyeBW).*normMriImage2);colormap('gray');


closeEyeBW = imclose(fillEyeBW,strel('disk',16));

% Displaying binary mask
figure;
subplot(1,2,1)
imagesc(closeEyeBW);

% Displaying selected ROI
subplot(1,2,2)
imagesc(closeEyeBW.*normMriImage2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%