% Create Nifti (.nii) volume file
myCube_nii=make_nii(myCube);

% Save .nii file to current directory
save_nii(myCube_nii,'myCube.nii')