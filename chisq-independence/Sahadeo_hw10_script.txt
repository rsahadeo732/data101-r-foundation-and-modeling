# Contingency table
data <- matrix(c(200688, 24, 33, 201087, 27, 115), nrow = 2, byrow = TRUE)
colnames(data) <- c("Did not contract Polio", "Contracted Nonparalytic Polio", "Contracted Paralytic Polio")
rownames(data) <- c("Vaccinated", "Vaccinated with Placebo")
data

# Chi-square test
chi2_result <- chisq.test(data)
chi2_p_value <- chi2_result$p.value
print(paste("Chi-square test p-value:", chi2_p_value))

# Convert matrix to table
data_table <- as.table(data)

# Permutation test
perm_test_result <- chisq.test(data_table, simulate.p.value = TRUE, B = 2000)
perm_test_p_value <- perm_test_result$p.value
print(paste("Permutation test p-value:", perm_test_p_value))
