% Creating region-coded mask
codedRegionMask = sum(RegionBW,3);

% Displaying region-coded mask
figure
imagesc(codedRegionMask);