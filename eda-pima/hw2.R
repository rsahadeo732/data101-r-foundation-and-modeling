#Library
library(faraway)

#Call Dataset
head(pima)
str(pima)

#One way table
preg <-table(pima$pregnant)
preg

#Two way Table
pregAge <-table(pima$pregnant, pima$age)
pregAge

#Subset
HW2sub = subset(pima, age== 21)
head(HW2sub)
