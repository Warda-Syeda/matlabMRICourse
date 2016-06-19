% Specify data folder and image file name
dataFolder = './MRIData/sT2_TSE_T_301/'; 

imageName = 'IM-0001-0010.dcm';

% Read in Dicom metadata
dcmMetaData = dicominfo([dataFolder imageName]);
