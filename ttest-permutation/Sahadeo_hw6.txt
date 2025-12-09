# Load required library
library(EnvStats)

# Set seed 
set.seed(13245)

# Samples
sample1 <- runif(9, min = 0, max = 1)
sample2 <- runif(9, min = 0, max = 1.3)

# Q-Q Plot for sample1
qqnorm(sample1)
qqline(sample1)

# Q-Q Plot for sample2
qqnorm(sample2)
qqline(sample2)

# Two-sample t-test
t_test <- t.test(sample1, sample2, var.equal = TRUE)
print(t_test)

# Permutation Test
permutation_test <- twoSamplePermutationTestLocation(x = sample1, y = sample2, fcn = 'mean', alternative = "two.sided",
                                                     mu1.minus.mu2 = 0,  paired = FALSE,exact = FALSE, n.permutations = 10000, 
                                                     seed = NULL, tol = sqrt(.Machine$double.eps))
print(permutation_test)
