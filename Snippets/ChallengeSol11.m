%%%%%%%%%% Challenge 3 Solution
mriImage2 = mriImage(:,:,15);

% Normalizing MRI image
normMriImage2 = mriImage2./max(mriImage2(:));

% histogram of normalized MRI image
figure;
imhist(normMriImage2)

% Creating binary mask
normBW = im2bw(normMriImage2,0.21);

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

% Find region with largest area
[brainArea brainInd] = max(allAreas);

% Extract the largest region using ismember()
brainRegion = ismember(labelBW, brainInd);

% Convert from integer labeled image into binary image.
brainBW = brainRegion > 0;

% Fill holes in brain mask
fillBrainBW = imfill(brainBW,'holes');

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(fillBrainBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(fillBrainBW).*normMriImage2);colormap('gray');


closeBrainBW = imclose(fillBrainBW,strel('disk',16));

% Displaying binary mask
figure;
subplot(1,2,1)
imagesc(closeBrainBW);

% Displaying selected ROI
subplot(1,2,2)
imagesc(closeBrainBW.*normMriImage2);
%%%%%%%%%%%%%%%%%%