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
