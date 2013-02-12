#This package loads physical constants from the NIST database of Fundamental Physical Constants.
#The data was most recently downloaded as an ASCII file from the NIST website on 2013/02/06.

#figure out units for fine structure constant, inverse fine structure, muon g factor, muon magnetic moment anomaly, 
#neutron g factor, neutron-proton mass difference, proton g factor

#physical_constants <- data.frame(matrix(ncol = 4,nrow = 2));

setwd("~/Documents/github/PhysicalConstants/R")
physical_constants <- read.table("physical_constants_data.txt", header = TRUE, sep = ",")

