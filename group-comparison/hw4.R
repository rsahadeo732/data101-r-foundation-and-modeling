#Load the library
library(faraway)

#Load the pima dataset
head(pima)

#Display the Pima dataset
str(pima)

#Subset for test=0
testSubset0 <- subset(pima, test == 0)
testSubset0

#Mean of diabetes variable at test = 0
diabetesMean0 <- mean(testSubset0$diabetes)
diabetesMean0

#Subset for test = 1
testSubset1 <- subset(pima, test == 1)
testSubset1

#Mean of diabetes variable at test = 1
diabetesMean1 <- mean(testSubset1$diabetes)
diabetesMean1
