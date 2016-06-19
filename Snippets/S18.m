figure;
%Displaying axial slice
subplot(2,2,1);
imagesc(mriImage(:,:,1));
axis off;
colormap gray;
title('Axial')

%Displaying coronal slice
subplot(2,2,2);
corSlice = squeeze(mriImage(200,:,:));

% taking image transform
corSliceT = imtransform(corSlice,T0,R2);

%Displaying image
imagesc(corSliceT);
colormap gray; 
axis image; axis off
view(90,90)
title ('Coronal')

% Displaying sagittal slice
subplot(2,2,3);
sagSlice = squeeze(mriImage(:,200,:));

% taking image transform
sagSliceT = imtransform(sagSlice,T0,R2);

% Displaying image
imagesc(sagSliceT);
colormap gray; 
axis image; axis off
view(90,90)
title('Sagittal')
