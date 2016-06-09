% Part 2: Loading MRI Data
% Contributor/s: Warda Syeda

% View Dicom file structure 
dicomdisp('IM-0001-0001.dcm');

% Read a DICOM image by using dicomread
mriImage = dicomread('IM-0001-0001.dcm');

% Display single slice 
figure;
imagesc(mriImage);

% Turn off axis
axis off

% Reading data in bulk
