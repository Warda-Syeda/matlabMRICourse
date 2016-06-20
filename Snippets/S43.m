% Create a 40x40x40 cube in the center of a 140x140x140 frame 
frameDim=140;       % declaring frame dimensions

% Make a 3D grid
[Y X Z] = meshgrid(1:frameDim,1:frameDim,1:frameDim);  %matlab saves in a different order so X must be Y

% Define cube center aligned to the center of the frame
centerX = frameDim/2;
centerY = frameDim/2;
centerZ = frameDim/2;
xCubeDim = 40;
yCubeDim = 40;
zCubeDim = 40;
 
% Make temperory image array 
tempImage = zeros(frameDim,frameDim,frameDim);
tempImage(centerX-xCubeDim/2:centerX+xCubeDim/2, ...
          centerY-yCubeDim/2:centerY+yCubeDim/2, ...
          centerZ-zCubeDim/2:centerZ+zCubeDim/2 ) = 1;

% Create 3D cube
myCube = tempImage;