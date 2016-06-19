%%%%% Challenge 2 Solution %%%%%%%
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