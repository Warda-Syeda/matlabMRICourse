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
