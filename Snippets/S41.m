% Calculating empirical PDFs from above histograms
ePdfReg1 = hReg1.Values./ (hReg1.BinWidth * hReg1.NumBins);
ePdfReg2 = hReg2.Values./ (hReg2.BinWidth * hReg2.NumBins);