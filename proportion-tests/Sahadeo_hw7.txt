library(EnvStats)
set.seed(23415)

#Proportion test
prop.test.result <- prop.test(x = c(30, 40), n = c(50, 50), conf.level = 0.95, correct = FALSE)
prop.test.result

#Data for permutation test 1 = voted yes, 0 = voted no
young_voters <- c(rep(1, 30), rep(0, 20)) 
older_voters <- c(rep(1, 40), rep(0, 10))

#Permutation test
perm_test <- twoSamplePermutationTestProportion(young_voters, older_voters, alternative = "two.sided")
perm_test
