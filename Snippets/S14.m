% imagesc can be used in a loop to display a range of slices sequentially
figure;

for iImg = 1:22
    imagesc(mriImage(:,:,iImg));
    axis off; colormap gray
    hold on;
    
    % pause(n) slows down image display
    pause(0.3)   
end
