% MRI images can be displayed as a montage
% Image dimensions must be MxNx1xk
montageImg = reshape(mriImage,[512 512 1 22]);

% Montage colormap
montageCMap = gray(128);

% Displaying Montage Image
montage(montageImg, montageCMap);

