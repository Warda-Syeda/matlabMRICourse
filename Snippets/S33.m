% Extract the largest region using ismember()
brainRegion = ismember(labelBW, brainInd);

% Convert from integer labeled image into binary image.
brainBW = brainRegion > 0;