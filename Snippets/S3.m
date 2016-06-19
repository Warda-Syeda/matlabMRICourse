
% Read a DICOM image by using dicomread
mriImage1 = dicomread([dataFolder imageName]);

% Converting from uint16 to double
mriImage1 = double(mriImage1);
