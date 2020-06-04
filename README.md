# MBB 343: Data Science Laboratory for MBB

## Lab 01

### Dataset

Not applicable.

### Learning Objectives

- Install the R programming language and the RStudio text editor
- Navigate the RStudio text editor interface
  - Describe the purpose of the main panes (Source, Console, Environment, History, Files, Plots, Packages, Help)
  - Differentiate between writing R code in the console versus scripts
  - Look up and edit RStudio keyboard shortcuts and create new ones
  - List favourite RStudio keyboard shortcuts
  - Locate important options and buttons in RStudio (Global Options, Projects, Open/Save, Run/Source)
- Understand the basics of the file system
  - Identify and update the current working directory
  - Differentiate between absolute and relative paths
  - Explain how their working directory impacts their code
  - Use RStudio projects to automatically update the working directory
  - Use the `here` package to normalize file paths
- Install packages from CRAN and Bioconductor

## Lab 02

### Dataset

Not applicable.

### Learning Objectives

- Write simple R statements
  - Perform simple arithmetic calculations
  - Define a variable and retrieve its contents
  - Describe the main vector types (logical, integer, double, character)
  - Define vectors of length 1 for each type (without the `c()` function)
  - Define longer vectors for each type using the `c()` function
  - Describe how R recycles values
  - Create sequences of numbers using the colon (`:`) notation
  - Compare values with logical operators (`==`/`!=`, `<`/`<=`, `>`/`>=`)
- Differentiate between higher-level data structures in R (vectors, lists, matrices, data frames, tibbles)
  - Provide example use cases for data frames versus matrices
  - Explain advantages of tibbles over data frames

## Lab 03

### Dataset

To be determined.

### Learning Objectives

- Load data from files into R
  - Explain advantages of `readr` package over base R
  - Explain the `stringsAsFactors` argument
- Manipulate data frames in R using the `dplyr` package
  - Subset columns by name or condition using `select()`
  - Rename columns using `rename()`
  - Subset rows conditionally on one or more columns using `filter()`
  - Sort rows by one or more columns using `arrange()` and `desc()`
  - Create new columns from existing columns using `mutate()`
- Troubleshoot error messages in R

## Lab 04

### Dataset

To be determined.

### Learning Objectives

- Manipulate data frames in R using the `dplyr` package
  - Combine multiple `dplyr` commands using pipes (`%>%`)
  - Group rows using `group_by()`
  - Compute aggregate statistics using `summarize()`
  - Differentiate the behaviour of `mutate()` and `summarize()`
- Transform data frame layout using the `tidyr` package
  - Differentiate between long and wide layouts
  - List use cases for each layout (long and wide)
  - Convert data frame to long format using `pivot_longer()`
  - Convert data frame to wide format using `pivot_wider()`

## Lab 05

### Dataset

To be determined.

### Learning Objectives

- Visualize data using the `ggplot2` package
  - List the most common geometries ("geoms") and their use cases (categorical versus continuous X/Y variables)
  - Identify and describe the aesthetics of each geom
  - Create multi-layered plots by combining multiple geoms
  - Transform how data is mapped to visual features using scales
  - Reorder categorical axes using factors with the `forcats` package
  - Divide data into sub-plots using facetting
  - Configure how the axes of the individual facets are laid out
  - Save a plot to disk as PDF and PNG images
  - Differentiate between PDF and PNG images

## Lab 06

### Dataset

To be determined.

### Learning Objectives

- Perform parametric (Pearson) and non-parametric (Spearman) correlation in R
  - Differentiate between both types of correlation
  - Visualize the correlation for a dataset using the `ggplot` package
  - Identify which type of correlation is most appropriate for a dataset
  - Calculate the correlation coefficient using `cor()`
  - Calculate the P-value using `cor.test()`
- Perform parametric (t-test) and non-parametric (Wilcoxon test) two-sample tests
  - Differentiate between both types of tests
  - Visualize the data in each group of a dataset using the `ggplot` package
  - Identify which type of test is most appropriate for a dataset
  - Calculate the P-value using `t.test()` and `wilcox.test()`

## Lab 07

### Dataset

To be determined.

### Learning Objectives

- Perform independence tests on categorical data
  - Differentiate between Fisher's exact test and chi-squared test
  - Identify which test is most appropriate for a dataset
  - Visualize the categorical data for a dataset using the `ggplot` package
  - Process a data frame to produce a contingency table
  - Calculate P-value using `fisher.test()` and `chisq.test()`
- Perform P-value correction for multiple hypothesis testing
  - Explain the multiple hypothesis problem
  - Correct P-values using `p.adjust()`
  - Detect anomalies in P-value distributions
  - Visualize P-value distribution using the `ggplot` package

## Lab 08

### Dataset

To be determined.

### Learning Objectives

- Perform simple linear regression in R
  - List assumptions made for linear regression
  - Visualize simple linear regression using the `ggplot` package
  - Identify outliers and decide whether to exclude them
  - Fit a linear model to a dataset using `lm()`
  - Interpret diagnostic plots from a simple linear regression model
  - Calculate P-values from a linear model using `summary()`
  - Compare and evaluate linear models

## Lab 09

### Dataset

To be determined.

### Learning Objectives

- Perform multiple linear regression in R
  - Differentiate between simple and multiple linear models
  - Fit a multiple linear regression model to a dataset using `lm()`
  - Interpret diagnostic plots from a multiple linear regression model
  - Interpret coefficients of linear models
  - Predict values using linear models
- Perform principal component analysis (PCA) using `prcomp()`
  - Explain importance of centering and scaling data prior to PCA
  - Evaluate PCA with scree plots using the `ggplot` package
  - Visualize principal components using the `ggplot` package
  - Explain the potential pitfalls with batch effects and PCA
  - Diagnose whether batch effects account for the top PCA components

## Lab 10

### Dataset

To be determined.

### Learning Objectives

- Perform logistic regression in R
  - Fit a logistic model to a dataset using `glm()`
  - Interpret logistic model coefficients
  - Apply logistic regression to a classification problem
  - Visualize logistic regression using the `ggplot` package
  - Perform penalized logistic regression in R using lasso regularization with the `glmnet` package

## Lab 11

### Dataset

To be determined.

### Learning Objectives

- Perform random forest classification in R
  - Train a random forest model using `randomForest`
  - Optimize hyperparameters of a random forest model
  - Evaluate random forest models
  - Compare performance between random forest and logistic regression (with and without lasso regularization)
  - Identify important features using random forest

## Lab 12

### Dataset

To be determined.

### Learning Objectives

- Perform hierarchical clustering in R
  - Explain limitations of hierarchical clustering
  - Identify relevant distance metrics
  - Calculate distances using `dist()`
  - Perform clustering using `hclust()`
  - Visualize clustering using the `ggdendro` package
  - Perform and visualize clustering using the `pheatmap` package
  - Evaluate clustering using the `ConsensusClusterPlus` package

## Lab 13

### Dataset

To be determined.

### Learning Objectives

- Perform linear dimensional reduction using PCA
  - Explain why PCA is useful for graph-based clustering and non-linear dimensional reduction
  - Determine the dimensionality of the dataset (optimal number of principal components)
- Perform graph-based clustering
  - Explain advantages of graph-based clustering compared to other forms of unsupervised clustering
  - Evaluate graph-based clusters
- Perform uniform manifold approximation and projection (UMAP) using the `umap` package
  - Differentiate between linear and non-linear dimensional reduction
  - Visualize UMAP results using the `ggplot` package
  - Evaluate UMAP results using graph-based clusters and other covariates
