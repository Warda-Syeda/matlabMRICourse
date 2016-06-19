% Calculate number of voxels in each region
regStats = regionprops(cleanBW,'area');
allAreas = [regStats.Area];

% Find region with largest area
[brainArea brainInd] = max(allAreas);
