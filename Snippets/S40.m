% Creating empirical distribution of T2 Values in selected ROIs

% Recalculating histogram and storing the output into a 'Histogram'
% object
hReg1 = histogram(regVox(1).Vals);
hReg2 = histogram(regVox(2).Vals);