#This package loads physical constants from the NIST database of Fundamental Physical Constants.
#The data was most recently downloaded as an ASCII file from the NIST website on 2013/02/06.

#figure out units for fine structure constant, inverse fine structure, muon g factor, muon magnetic moment anomaly, 
#neutron g factor, neutron-proton mass difference, proton g factor

#physical_constants <- data.frame(matrix(ncol = 4,nrow = 2));

setwd("~/Documents/github/PhysicalConstants/R")
physical_constants <- read.csv("physical_constants_data.txt", header = TRUE, sep = ",")
#I had to pre-format some things in the text file of data
#1) comma delimited; 2) take out spaces between segments of numbers and between numbers and the exponential 'e' (still need to finish this)

numrows = 3;

#Assign values to all constant names
for(row in 1:numrows){
  #Make name of constant into an R-readable variable name
  constantName <- gsub(pattern = "\\ +", replacement = "_", x = toString(physical_constants[row,1]))
  constantName <- gsub(pattern = "\\-+", replacement = "_", x = constantName)
    #Still to do: handle special cases like {220}_lattice_spacing_of_silicon
  #Assign a value to the newly formed variable name
  assign(constantName[1], 2e-30)
}

#figure out how to turn a value in the table into an R-recognized numeric value
as.numeric(levels(physical_constants[row,2]))[physical_constants[row,2]]