% Part 3: 
% Contributor/s: Warda Syeda

clc
clear all
close all

brainImgMask = zeros(512);

brainImg1 = dicomread('./MRIData/sT2_TSE_T_301/IM-0001-0015.dcm');

figure;
imagesc(brainImg1./max(brainImg1(:)));
colormap ('gray')

brainImg1Msk = find(brainImg1>200);
brainImgMask(brainImg1Msk) = 1;

figure;
imagesc(brainImgMask.*double(brainImg1));
colormap('gray')
