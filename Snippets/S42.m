% Plotting empirical PDFs
figure;
plot(hReg1.BinEdges(1:end-1), ePdfReg1);
hold on
plot(hReg2.BinEdges(1:end-1), ePdfReg2);