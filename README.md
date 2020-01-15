# MBB 343: Data Science Laboratory for MBB

## Learning Objectives

At the conclusion of each lab, students will be able to: 

### Lab 01

- Install the R and RStudio software
- Navigate the RStudio text editor interface
  - Describe the purpose and use of each pane
  - Differentiate between using the console and writing scripts
  - List useful keyboard shortcuts for running and editing R code
  - Locate important buttons and options in RStudio
- Identify their working directory and explain how it impacts their code
- Install the `swirl` package and the "R Programming" course
- Write simple R code using the `swirl` package
  - Perform simple mathematical calculations
  - Define a variable and retrieve its contents
  - Define vectors
  - Describe the function of a vector
  - Write complex R expressions using both variables and constants
  - Describe how R recycles values
  - Create sequences of numbers
  - Compare values with logical operators

### Lab 02

- Load data from files into R
  - List advantages of using the `readr` package compared to base R
- Manipulate data frames in R using the `dplyr` package
  - Subset columns using `select()`
  - Rename columns using `rename()`
  - Subset rows using `filter()`
  - Reorder rows using `arrange()`
  - Create new columns using `mutate()`
- Troubleshoot error messages in R

### Lab 03

- Manipulate data frames in R using the `dplyr` package
  - Combine multiple `dplyr` commands using pipes (`%>%`)
  - Group rows using `group_by()`
  - Compute aggregate statistics using `summarize()`
  - Differentiate between `mutate()` and `summarize()`
- Transform data frame layout using the `tidyr` package
  - Differentiate between long and wide layouts
  - Explain advantages of each layout
  - Convert data frame to long format using `pivot_longer()`
  - Convert data frame to wide format using `pivot_wider()`

### Lab 04

- Visualize data using the `ggplot2` package
  - List the most common geometries ("geoms") and their use cases
  - Identify and describe the aesthetics of each geom
  - Create multi-layered plots by combining multiple geoms
  - Transform how data is mapped to visual features using scales
  - Divide data into sub-plots using facetting
  - Save a plot to disk

### Lab 05

- Perform parametric (Pearson) and non-parametric (Spearman) correlation in R
  - Differentiate between both types of correlation
  - Identify which type of correlation is most appropriate for a dataset
  - Calculate the correlation coefficient using `cor()`
  - Calculate P-value using `cor.test()`
  - Visualize the correlation for a dataset using the `ggplot` package

### Lab 06

- Perform parametric (t-test) and non-parametric (Wilcoxon test) two-sample tests
  - Differentiate between both types of tests
  - Identify which type of test is most appropriate for a dataset
  - Calculate P-value using `t.test()` and `wilcox.test()`
  - Visualize the data in each group of a dataset using the `ggplot` package

### Lab 07

- Perform independence tests on categorical data
  - Differentiate between Fisher's exact test and chi-squared test
  - Identify which test is most appropriate for a dataset
  - Calculate P-value using `fisher.test()` and `chisq.test()`
  - Visualize the categorical data for a dataset using the `ggplot` package
- Perform P-value correction for multiple hypothesis testing
  - Explain the multiple hypothesis problem
  - Correct P-values using `p.adjust()`
  - Visualize P-value distribution using the `ggplot` package
  - Detect anomalies in P-value distributions

### Lab 08

- Perform simple linear regression in R
  - List assumptions made for linear regression
  - Fit a linear model to a dataset using `lm()`
  - Calculate P-values from a linear model using `summary()`
  - Compare and evaluate linear models
  - Visualize simple linear regression using the `ggplot` package

### Lab 09

- Perform multiple linear regression in R
  - Fit a multiple linear model to a dataset using `lm()`
  - Differentiate between simple and multiple linear models
  - Interpret coefficients of linear models
  - Predict values using linear models
  - Visualize multiple linear regression using the `ggplot` package
- Perform principal component analysis (PCA) using `prcomp()`
  - Explain importance of centering and scaling data prior to PCA
  - Evaluate PCA with scree plots using the `ggplot` package
  - Visualize principal components using the `ggplot` package

### Lab 10

- Perform logistic regression in R
  - Fit a logistic model to a dataset using `glm()`
  - Interpret logistic model coefficients
  - Apply logistic regression to a classification problem
  - Visualize logistic regression using the `ggplot` package

### Lab 11

- Perform random forest classification in R
  - Train a random forest model using `randomForest`
  - Optimize hyperparameters of a random forest model
  - Evaluate random forest models
  - Compare performance between random forest and logistic regression
  - Identify important features using random forest

### Lab 12

- Perform hierarchical clustering in R
  - Explain limitations of hierarchical clustering
  - Identify relevant distance metrics
  - Calculate distances using `dist()`
  - Perform clustering using `hclust()`
  - Visualize clustering using the `ggdendro` package
  - Perform and visualize clustering using the `pheatmap` package
  - Evaluate clustering using the `ConsensusClusterPlus` package

### Lab 13

- Perform t-distributed stochastic neighbour embedding (t-SNE) using the `Rtsne` package
  - Explain difference between PCA and t-SNE
  - Visualize t-SNE using the `ggplot` package
