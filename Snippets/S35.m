% Selecting ROI for analysis
figure
imagesc(mriImage1)

for iReg = 1:2
     hFree= imfreehand();
     regionBW(:,:,iReg) = createMask(hFree);
     codedRegionBW(:,:,iReg) = iReg.*regionBW(:,:,iReg);
     [regX regY regVox(iReg).Vals] = find(regionBW(:,:,iReg) .* mriImage1);
     delete(hFree);
end