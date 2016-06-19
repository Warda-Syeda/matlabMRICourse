
% Reading data in bulk
for iImg  = 1:22
    mriImage(:,:,iImg) = dicomread([dataFolder sprintf('IM-0001-00%02d.dcm', iImg)]);   
end

% Converting MRI data from uint16 to double
mriImage = double(mriImage);