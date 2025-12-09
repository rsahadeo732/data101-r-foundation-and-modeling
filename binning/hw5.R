#Load the library
library(faraway)

#Glocuse Quartiles
summary(pima$glucose)

#Obtain Quartiles
pima$Q = as.factor(cut(pima$glucose, breaks = c(-.1,99.0,117.0,140.2,199.0)))

#Table checking values
table(pima$glucose,pima$Q)

#Tapply function to check the mean
tapply(pima$glucose,pima$Q,mean)

#Check calculations for Q1
mean(pima[(0 <= pima$glucose) & (pima$glucose <= 99.0),]$diabetes)

#Check calculations for Q4
mean(pima[(140.2 <= pima$glucose),]$diabetes)
