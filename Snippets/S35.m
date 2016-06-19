% Selecting ROI for analysis
figure
imagesc(mriImage1)

for iReg = 1:2
     hFree= imfreehand();
     RegionBW(:,:,iReg) = createMask(hFree);
     [regX regY regVox(iReg).Vals] = find(RegionBW(:,:,iReg) .* mriImage1);
     delete(hFree);
end