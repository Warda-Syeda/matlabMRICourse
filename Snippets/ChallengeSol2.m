%%%%%% Challenge 2 Solution %%%%%%%%%

% Creating a random image
myObjImg = magic(200);

% Displaying image
figure; 
imagesc(myObjImg);
colormap('gray');
axis off

% Zero-padding myOjImg to have a black background 
myImg = padarray(myObjImg, [100 100], 0, 'both');

% Displaying image with a background
figure; 
imagesc(myImg);
colormap('gray');
axis off

% Saving myImg as a .mat file
save('myImage','myImg');

%%%%%%%%%%%%%%%%