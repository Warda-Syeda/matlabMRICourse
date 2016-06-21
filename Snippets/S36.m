% Creating region-coded mask
codedRegionMask = sum(codedRegionBW,3);

% Displaying region-coded mask
figure
imagesc(codedRegionMask);
axis off;