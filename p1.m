% Part 1: Understanding MRI data
% Contributor/s: Warda Syeda

% Specify data foler
dataFolder = './MRIData/sT2_TSE_T_301/'; 

imageName = 'IM-0001-0010.dcm';

% Read in Dicom metadata
dcmMetaData = dicominfo([dataFolder imageName]);

% View Dicom file structure 
dicomdisp([dataFolder imageName]);

% Read a DICOM image by using dicomread
mriImage1 = dicomread([dataFolder imageName]);

% Converting from uint16 to double
mriImage1 = double(mriImage1);

% Display single slice in grayscale 
figure;
imagesc(mriImage1);
colormap('gray')

% Turn off axis
axis off

% Reading data in bulk
for iImg  = 1:22
    mriImage(:,:,iImg) = dicomread([dataFolder sprintf('IM-0001-00%02d.dcm', iImg)]);   
end

% Converting MRI data from uint16 to double
mriImage = double(mriImage);

% Challenge 1
% Download an MRI dicom dataset of your choice from internet.
% Load your dataset into MATLAB and display first dicom image of your
% dataset
% Create MRI image matrix from all dicom images in your downloaded dataset.

%%%%%%%%%%%%%%%%%%% Start Structs %%%%%%%%%%%%%%%%%%%%%

% Structs are defined using '.'
Person1.FirstName = 'Jane';
Person1.LastName = 'Doe';

% A single struct can store different data types
Person1.PassportNum = 12345;
Person1.DOB = '01/01/2001';

% Funtion struct creates a structure array
Person2 = struct('FirstName','John','LastName','Doe','PassportNum',67891,'DOB','30/01/2001');

% An array of structures
Directory(1).Person = Person1;
Directory(2).Person = Person2;

% Challenge 2

% Create a structure called myImg with following fields
% Img: a random image of a 3D object with 3 slices
% (You can use MATLAB's in-build function 'magic' to fill image)
% Dim: a vector containing dimensions of the image
% Date: Date the image was created
% ID: A unique image ID

%Save myImage structure as a .mat file in current directory

%%%%%% Challenge Solution %%%%%%%%%

% Creating a random image
myObjImg = magic(200);

% Displaying image
figure; 
imagesc(myObjImg);
colormap('gray');
axis off

% Zero-padding myOjImg to have a black background 
myImg = padarray(myObjImg, [100 100], 0, 'both');

% Displaying image with a background
figure; 
imagesc(myImg);
colormap('gray');
axis off

% Saving myImg as a .mat file
save('myImage','myImg');

%%%%%%%%%%%%%%%%

% MRI images can be exported from MATLAB in NIfTI format
mriImgNifti = make_nii(mriImage);

% NIfTI object created above can be exported out of MATLAB using save_nii
save_nii(mriImgNifti,'mriNifti.nii');

% Re-loading NIfTI file 
mriImgReload = load_nii('mriNifti.nii');

% Challenge 3
% Convert 'myImg' created in pervious challenge into NIfTI format
% Save NIfTI structure as .nii file into your current directory

%%%%%%%%%%%%%%%%%%%%End of Part 1%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 2: Visualizing MRI data
% Contributor/s: Warda Syeda

% MRI images can be displayed as a montage
% Image dimensions must be MxNx1xk
montageImg = reshape(mriImage,[512 512 1 22]);

% Montage colormap
montageCMap = gray(128);

% Displaying Montage Image
montage(montageImg, montageCMap);

% Challenge 1
% Download an MRI dataset of your choice. 
% Create Montage of the images with multiple intensity ranges
% Extension: Create montage of every other image in the dataset

% imagesc can be used in a loop to display a range of slices sequentially
figure;

for iImg = 1:22
    imagesc(mriImage(:,:,iImg));
    axis off; colormap gray
    hold on;
    
    % pause(n) slows down image display
    pause(0.3)   
end

% subplot can be used to display montage-like image slice.  
figure;
for iImg = 1:22
    subplot(5,5,iImg)
    imagesc(mriImage(:,:,iImg));
    
    % Setting display properties
    colormap gray
    axis image;
    axis off; colorbar
    title(sprintf('Slice # %02d',iImg))      
end

% Challenge 2
% Create montage of your downloaded MRI images using subplot.
% Assign different colormaps to different slices e.g. slice#1 gray, slice#2
% jet, slice#3 gray and so on
% Display colorbar for each slice.
% Extension: Flip slices along y-direction, Flip slices along x-direction
% set cLim property of slice images so that each colorbar has same range.

% MRI image array can be indexed to display slices in axial, coronal or
% sagittal view

figure
%Displaying axial slice
subplot(2,2,1);
imagesc(mriImage(:,:,1));
colormap gray; axis off;
title('Axial')

%Displaying coronal slice
subplot(2,2,2);
corSlice = squeeze(mriImage(200,:,:));
imagesc(corSlice);
colormap gray; axis off
view(90,90)
title ('Coronal')

% Displaying sagittal slice
subplot(2,2,3);
sagSlice = squeeze(mriImage(:,200,:));
imagesc(sagSlice);
colormap gray; axis off;
view(90,90);
title('Sagittal')

% Challenge 3
% Diplay axial, sagittal and coronal slices of your downloaded MRI data.
% Set axis image and observe changes in coronal and axial slices.
% Extension: Loop through all sagittal slices for axial-slice# 10 and coronal-slice#
% 300.

% To improve image quality of coronal and sagittal views
% Affine transform, followed by interpolation is carried out. 

% Defining affine transform
T0 = maketform('affine',[2 0; 0 .23; 0 0]);

% Creating resampling structure
R2 = makeresampler({'cubic','nearest'},'fill');

figure
%Displaying axial slice
subplot(2,2,1);
imagesc(mriImage(:,:,1));
axis off;
colormap gray;
title('Axial')

%Displaying coronal slice
subplot(2,2,2);
corSlice = squeeze(mriImage(200,:,:));

% taking image transform
corSliceT = imtransform(corSlice,T0,R2);

%Displaying image
imagesc(corSliceT);
colormap gray; 
axis image; axis off
view(90,90)
title ('Coronal')

% Displaying sagittal slice
subplot(2,2,3);
sagSlice = squeeze(mriImage(:,200,:));

% taking image transform
sagSliceT = imtransform(sagSlice,T0,R2);

% Displaying image
imagesc(sagSliceT);
colormap gray; 
axis image; axis off
view(90,90)
title('Sagittal')

% Challenge 4 
% Try different values for affine transform(scaling and rotation) matrix. 
% Open documentation for makeresampler and change properties of interpolation object.
% Apply it on coronal and axial slices of your choice and observe effects
% of these changes. 

% view_nii is a useful function for visualizing NIfTI files
view_nii(mriImgNifti);

% Challenge 5
% View NIfTI file of 'myImg' created in Part 1.

 %%%%%%%%%%%%%%%%%%%%%%%%%% End of Part 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 3: Selecting ROIs
% Contributor/s: Warda Syeda     http://homepages.inf.ed.ac.uk/rbf/HIPR2/affine.htm

% Manual ROI selection

% Displaying Figure
figure;
imagesc(mriImage1);

% Manually creating elliptical ROI binary mask
hElips = imellipse();
elipsBW = createMask(hElips);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(elipsBW); colormap('gray')
axis image

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(elipsBW).*mriImage1)
axis image

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

% roipoly can be used in a loop to create masks for multiple slices
figure
iMask = 1;
for iImg = [1:10:22]
    
    % Selecting and displaying slice
    mriSlice = mriImage(:,:,iImg);
    imagesc(mriSlice); colormap('gray');
    
    % Creating binary mask
    polyBW(:,:,1,iMask) = roipoly();
    
    % Selecting roi
    sliceROI(:,:,1,iMask) = double(polyBW(:,:,1,iMask)).*mriImage(:,:,iImg);
     
    % incrementing mask index
    iMask = iMask+1;
end

% Display mask image
figure;
montage(polyBW);

% Display Selected ROIs
figure;
montage(sliceROI,gray(1000));

% Challenge 1
% Using the downloaded dataset of your choice, manually delineate ROIs in
% first 5 slices. 
% Display montage of masks created in previous step.
% Display montage of selected ROIs. 
% Extension: By building upon the concept of looping, create binary masks
% of multiple ROIs in same slice e.g. masks for eyes, brain etc

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

% Challenge 2
% By using the concepts of 'for loop', select 2-3 ROIs in a single slice.
% Hint: delete(h) deletes the perviously drawn region
% Merge all binary masks into a single mask. Hint: Check out 'sum' function
% Extension: Colorcode each selected ROI by assigning a different number to
% voxels in each binary mask.

%%%%% Challenge 2 Solution
figure;
imagesc(mriImage1)
for iRegion = 1:3
    hFree = imfreehand();
    regBW(:,:,1,iRegion) = createMask(hFree);
    codedRegBW(:,:,1,iRegion) = iRegion*regBW(:,:,1,iRegion);
    delete(hFree)
end

codedMask = sum(squeeze(codedRegBW),3);

figure
imagesc(codedMask)
%%%%%%%%%%%%%%%%

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

% Semi-automatic Brain Extraction

% Normalizing MRI image
normMriImage1 = mriImage1./max(mriImage1(:));

% Displaying Mesh plot of slice
figure;
mesh(normMriImage1);

% histogram of normalized MRI image
figure;
imhist(normMriImage1);

% Creating binary mask
normBW = im2bw(normMriImage1,0.15);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(normBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(normBW).*normMriImage1);colormap('gray');

% clean mask of small areas
cleanBW = bwareaopen(normBW,500);

% Displaying binary mask
figure
subplot(1,2,1)
imagesc(cleanBW); colormap('gray')

% Displaying selected ROI
subplot(1,2,2)
imagesc(double(cleanBW).*normMriImage1);colormap('gray');

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
imagesc(double(fillBrainBW).*normMriImage1);colormap('gray');

% Challenge 3
% Select slice# 15 of this T2 brain dataset and create a normalized image
% Perform brain extraction by adjusting parameters

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

%%%%%%%%%%%%%%%%%%%%%%%%% End of Part 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 4: Analysing MRI data
% Contributor/s: Warda Syeda

% Selecting ROI for analysis
figure
imagesc(mriImage1)

for iReg = 1:2
     hFree= imfreehand();
     RegionBW(:,:,iReg) = createMask(hFree);
     [regX regY regVox(iReg).Vals] = find(RegionBW(:,:,iReg) .* mriImage1);
     delete(hFree);
end

% Creating region-coded mask
codedRegionMask = sum(RegionBW,3);

% Displaying region-coded mask
figure
imagesc(codedRegionMask);

% Display mean voxel values of both ROIs
disp(sprintf('Mean voxel value of R1: %d',mean(regVox(1).Vals)));
disp(sprintf('Mean voxel value of R2: %d',mean(regVox(2).Vals)));

% Display std. voxel values of both ROIs
disp(sprintf('Mean voxel value of R1: %d',std(regVox(1).Vals)));
disp(sprintf('Mean voxel value of R2: %d',std(regVox(2).Vals)));

% Creating histogram of region voxel values
figure
histogram(regVox(1).Vals)
hold on
histogram(regVox(2).Vals)

% Creating empirical distribution of T2 Values in selected ROIs

% Recalculating histogram and storing the output into a 'Histogram'
% object
hReg1 = histogram(regVox(1).Vals);
hReg2 = histogram(regVox(2).Vals);

% Calculating empirical PDFs from above histograms
ePdfReg1 = hReg1.Values./ (hReg1.BinWidth * hReg1.NumBins);
ePdfReg2 = hReg2.Values./ (hReg2.BinWidth * hReg2.NumBins);

% Plotting empirical PDFs
figure;
plot(hReg1.BinEdges(1:end-1), ePdfReg1);
hold on
plot(hReg2.BinEdges(1:end-1), ePdfReg2);

% Challenge 1:
% Take slice# 10 of T2 brain dataset (mriImage1) and select three ROIs -
% Possible abnormality on right, healty tissue on left and right
% ventricle. 
% Find meand and standard deviation of all 3 ROI values
% Plot histogram for each selected ROI and derive empirical probability
% distribution. 
% Try to figure out the nature of pathology based on your observations.
% e.g. Is liquid content present or not etc.

%%%%%%%%%%%%%%%%%%%%%%%%% End of Part 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Mega Challenge: Extract eye-regions in slice# 15 semi-automatically
% Plot histograms of both eyes and infer their empirical distributions

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


%%%%% Advanced Imaging Techniques %%%%%%%%%%%%%%%%%%%%

% figure
% cm = gray(50);
% cHandle = contourslice(mriImage,[],[],[1 5 15],8);
% colormap(cm)
% set(cHandle,'FaceColor','interp')
% 
figure
colormap(gray(1000))
Ds = smooth3(mriImage);
hiso = patch(isosurface(Ds,22),...
    'FaceColor',[1,.75,.65],...
    'EdgeColor','none');
isonormals(Ds,hiso)

hcap = patch(isocaps(mriImage,22),...
    'FaceColor','interp',...
    'EdgeColor','none');
view(35,30)
axis tight
daspect([1,1,.1])
lightangle(-40,30);
lighting gouraud
hcap.AmbientStrength = 1;
hiso.SpecularColorReflectance = 1;
hiso.SpecularExponent = 60;
set (gca, 'ZDir', 'reverse')

% %%%%%%%%%% End of surface-based visualization techniques %%%%%%%%%%%%%%
