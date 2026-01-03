# data101-r-foundation-and-modeling

Intro R and statistical inference projects from my Data 101 course.  
This repo shows my foundations in R programming, exploratory data analysis, and basic inference / modeling.

---

## Repo structure

- **r-basics**  
  *Goal:* Learn core R syntax and data structures.  
  *Highlights:* Create vectors, combine into a data frame, engineer a new variable, compute summary statistics.

- **eda-pima**  
  *Goal:* Practice exploratory data analysis (EDA) on a medical dataset.  
  *Highlights:* Inspect data structure, build one-way and two-way frequency tables, subset rows by conditions.

- **group-comparison**  
  *Goal:* Compare groups using numeric summaries.  
  *Highlights:* Filter by outcome and compute group means to understand differences between two populations.

- **binning**  
  *Goal:* Turn a continuous variable into meaningful categories.  
  *Highlights:* Use `cut()` to create quartile-style bins, summarize by group, and verify results with manual checks.

- **ttest-permutation**  
  *Goal:* Compare two means using both classical and simulation-based methods.  
  *Highlights:* Generate samples, create Q-Q plots, run a two-sample t-test, and implement a permutation test.

- **proportion-tests**  
  *Goal:* Compare two proportions.  
  *Highlights:* Use `prop.test()` and a permutation-style approach to test differences between two groups.

- **chisq-gof**  
  *Goal:* Test how well observed categorical data matches an expected distribution.  
  *Highlights:* Compute expected counts and run a chi-square goodness-of-fit test, interpret p-values.

- **chisq-independence**  
  *Goal:* Test if two categorical variables are independent.  
  *Highlights:* Build contingency tables, run chi-square tests of independence, and use simulation to approximate p-values.

- **earnings-report**  
  *Goal:* Predict earnings using a regression tree.  
  *Highlights:* Engineer interaction-style features, train an `rpart` regression tree, calculate MSE, and generate predictions for a test set.

---

## Skills demonstrated

- **Programming in R**
  - Vectors, data frames, subsetting, basic control flow
- **Exploratory Data Analysis**
  - Frequency tables, grouped summaries, binning, simple visual checks
- **Statistical Inference**
  - t-tests, tests for proportions, chi-square tests (goodness-of-fit and independence)
  - Simulation / permutation-style tests and simulated p-values
- **Intro Predictive Modeling**
  - Regression tree (`rpart`), basic feature engineering, train/test split, MSE evaluation

---

## How this connects to my career path

- **Data Scientist:**  
  `ttest-permutation`, `proportion-tests`, `chisq-*`, and `earnings-report` show statistical thinking, inference, and a first supervised model.

- **Data Analyst:**  
  `r-basics`, `eda-pima`, `group-comparison`, and `binning` show hands-on EDA, summarization, and clear communication of numeric comparisons.

- **Data Engineer (supporting):**  
  This repo documents my statistics and R foundations. My stronger data-engineering work is in separate repos (SQL, databases, ETL).
