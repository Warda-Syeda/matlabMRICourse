% To improve image quality of coronal and sagittal views
% Affine transform, followed by interpolation is carried out. 

% Defining affine transform
T0 = maketform('affine',[2 0; 0 .23; 0 0]);

% Creating resampling structure
R2 = makeresampler({'cubic','nearest'},'fill');
