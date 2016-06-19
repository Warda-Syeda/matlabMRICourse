% MRI image array can be indexed to display slices in axial, coronal or
% sagittal view

figure
%Displaying axial slice
subplot(2,2,1);
imagesc(mriImage(:,:,1));
colormap gray; axis off;
title('Axial')

%Displaying coronal slice
subplot(2,2,2);
corSlice = squeeze(mriImage(200,:,:));
imagesc(corSlice);
colormap gray; axis off
view(90,90)
title ('Coronal')

% Displaying sagittal slice
subplot(2,2,3);
sagSlice = squeeze(mriImage(:,200,:));
imagesc(sagSlice);
colormap gray; axis off;
view(90,90);
title('Sagittal')
