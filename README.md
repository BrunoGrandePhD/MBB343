# MBB 343: Data Science Laboratory for MBB

## Course Overview

### Summary

These materials are designed for an elective 2-credit course in the Department of Molecular Biology and Biochemistry (MBB) at Simon Fraser University. This course is intended to accompany the lecture-based STAT 320 (Introduction to Data Science for the Life Sciences), a 2-unit course that will introduce life sciences students to data science. The examples in this lab course will be geared towards MBB students with an emphasis on molecular biology and genomic data. The expected enrollment is around 30 students.

Together, STAT 320 and MBB 343 will provide a gentle introduction to important tools in data science and will be tailored to students with no prior programming experience. The curriculum in this laboratory course will provide life sciences students with an opportunity to learn R, the most popular statistical programming language, which is commonly used for data science. During the STAT 320 lectures, students will learn theoretical and practical aspects of statistics that are directly relevant to this course. In addition, each 3-hour lab will begin with a 1-hour lecture and tutorial that will provide more specific context on the topic and data being analyzed that week as well as hands-on demonstrations of the relevant tools. These lectures will bridge the concepts taught in STAT 320 with relevant applications to biological data for students with a basic molecular biology background (MBB 222). Most weeks, students will respond to quiz questions throughout the lecture and tutorial to reinforce their understanding of the preparatory material.

Initially, we will require that STAT 320 and MBB 343 be taken concurrently. However, we will encourage life sciences departments to develop their own discipline-specific laboratory courses that could substitute for MBB 343. This approach is consistent with the model created by Statistics and Actuarial Science for the first introductory data science courses for non-Statistics majors (STAT 310 and STAT 311).

### Prerequisites/Corequisites

- **Prerequisites:** MBB 222 and one of STAT 201, STAT 203, STAT 205, or STAT 270 with a grade of at least C- or permission of the instructor.
- **Corequisite:** STAT 320

### Grading Scheme

- **In-class quizzes:** 20%
- **Lab assignments:** 50%
- **Final project:** 30%

### Course Textbook

Hadley Wickham and Garrett Grolemund (2017) "R for Data Science: Import, Tidy, Transform, and Import Data”, O’Reilly.

Freely available online: https://r4ds.had.co.nz

## Lab 01: Getting Started

### Concepts/Glossary

- R
- RStudio
- Text editor (vs word processor)
- Integrated development environment (IDE)
- Open source
- Reproducibility
- Script
- Console
- Run/Source
- RStudio projects
- Statement
- Prompt (> vs +)
- Arithmetic operator
- Assignment operator (<- vs =)
- Assignment vs printing
- Logical operator
- Function
- Object
- Variable
- Assignment
- Environment
- Help page
- Reproducible example (reprex)

### Learning Objectives

- Set up the R programming language and the RStudio IDE
  - Install R and RStudio on a local computer or laptop
  - Create an account on rstudio.cloud
- Navigate the RStudio interface
  - Customize RStudio options for reproducibility and convenience
  - Describe the purpose of the main panes in RStudio (Source, Console, Environment, History, Files, Plots, Packages, Help)
  - Locate important buttons in RStudio (Projects, Open/Save, Run/Source)
  - Differentiate between writing R code in the console versus scripts
  - Discover, edit, and create keyboard shortcuts in RStudio
- Write simple R statements
  - Perform simple arithmetic calculations
  - List arithmetic operators (+, -, \*, /, ^, ()) and their precedence
  - Compare values with logical operators (`==`/`!=`, `<`/`<=`, `>`/`>=`)
  - Define a variable with a valid name and retrieve its contents
  - Differentiate between variables and objects
  - Create sequences of integers using the colon (`:`) notation
  - Describe the structure and behaviour of a function call
- Identify where to look when seeking for help
  - Locate the help page for functions and special operators
  - Resolve an error message using a web search tool
  - Formulate effective questions for their peers

### Datasets

No data will be used in this lab.

### Resources

- http://swcarpentry.github.io/r-novice-gapminder/01-rstudio-intro
- http://swcarpentry.github.io/r-novice-gapminder/03-seeking-help
- https://ariel.rbind.io/workshop/rbasics/#interactive-tutorials

## Lab 02 – Data Structures: What Data Looks Like in R

Moved to `lab02/lab02-tutorial.Rmd`.

## Lab 03 – Data Exploration: Introducing the Tidyverse

Moved to `lab03/lab03-tutorial.Rmd`.

## Lab 04: Data Wrangling II

### Concepts/Glossary

- Magrittr pipes
- Grouped tibble
- Aggregate statistics
- Wide vs long format
- Tidy format
- List columns
- Data wrangling

### Learning Objectives

- Manipulate data frames in R using the `dplyr` package
  - Combine multiple `dplyr` commands using pipes (`%>%`)
  - Group rows using `group_by()` and `group_nest()`
  - Compute aggregate statistics using `summarize()`
  - Differentiate the behaviour of `mutate()` and `summarize()`
- Transform data frame layout using the `tidyr` package
  - Differentiate between long and wide layouts
  - List use cases for each layout (long and wide)
  - Convert data frame to long format using `pivot_longer()`
  - Convert data frame to wide format using `pivot_wider()`

### Datasets

- [Gapminder](https://github.com/jennybc/gapminder/blob/master/inst/extdata/gapminder.tsv)
- [Snow algae metadata](https://github.com/cengstro/bc_snow_algae_amplicon/blob/master/data/field/tidy_field.csv)

### Resources

- http://swcarpentry.github.io/r-novice-gapminder/13-dplyr
- http://swcarpentry.github.io/r-novice-gapminder/14-tidyr
- http://www-stat.wharton.upenn.edu/~moneyball/module3.html

## Lab 05: Data Visualization

### Concepts/Glossary

- Continuous variable
- Categorical variable
- Geom
- Aesthetic (variable vs constant)
- Layer
- Scale
- Facet
- Label
- Vector image
- Raster image
- Theme

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
  - Combine different plots using the `patchwork` package

### Datasets

- [Gapminder](https://github.com/jennybc/gapminder/blob/master/inst/extdata/gapminder.tsv)
- [Snow algae metadata](https://github.com/cengstro/bc_snow_algae_amplicon/blob/master/data/field/tidy_field.csv)

### Resources

- http://swcarpentry.github.io/r-novice-gapminder/08-plot-ggplot2

## Lab 06: Correlation and Two-Sample Tests

### Concepts/Glossary

- P-hacking
- Parametric test
- Non-parametric test
- Assumptions
- Normal distribution
- Linear relationship
- Monotonic relationship
- Correlation
- Anti-correlation
- Correlation coefficient
- P-value
- Two-sample test
- Outliers
- Confidence intervals

### Learning Objectives

- Explain importance of deciding which test to use before testing (P-hacking)
- Identify outliers for exclusion from tests
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

### Datasets

- [Snow algae microbiome](https://github.com/cengstro/bc_snow_algae_amplicon/blob/master/data/rel_abund/3_filter/18s/18s_rel_abund.csv)
- [Fluorescence staining](https://elifesciences.org/articles/46315/figures)
- Correlation of DNA and RNA expression

### Resources

- https://www.statsandr.com/blog/student-s-t-test-in-r-and-by-hand-how-to-compare-two-groups-under-different-scenarios/
- https://www.statsandr.com/blog/wilcoxon-test-in-r-how-to-compare-2-groups-under-the-non-normality-assumption/
- https://www.statsandr.com/blog/correlation-coefficient-and-correlation-test-in-r/
- https://online.stat.psu.edu/stat501/lesson/1/1.9
- https://yury-zablotski.netlify.app/post/multiple-logistic-regression-with-interactions/

## Lab 07: Categorical Tests and Multiple Hypothesis Testing

### Concepts/Glossary

- Exact test
- Effect size
- Odds ratio
- Contingency table
- Observed values
- Expected values
- Bonferroni correction
- Benjamini–Hochberg correction
- False discovery rate
- P-value distribution
- False positive
- False negative
- Type-1 error rate
- Type-2 error rate

### Learning Objectives

- Perform independence tests on categorical data
  - Differentiate between Fisher's exact test and chi-squared test
  - Identify which test is most appropriate for a dataset
  - Visualize the categorical data for a dataset using the `ggplot` package
  - Process a data frame to produce a contingency table
  - Calculate P-value using `fisher.test()` and `chisq.test()`
- Perform P-value correction for multiple hypothesis testing
  - Visualize P-value distribution first using the `ggplot` package
  - Explain the multiple hypothesis problem
  - Correct P-values using `p.adjust()`
  - Detect anomalies in P-value distributions

### Datasets

- A simple albeit naive application of these categorical tests are genome-wide associated studies. Possible datasets would include a salmonid genomic/SNP dataset from the Davidson lab.

### Resources

- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5426219
- http://varianceexplained.org/statistics/interpreting-pvalue-histogram/

## Lab 08

### Concepts/Glossary

- Model
- Dependent variable
- Independent variable
- Intercept
- Regression coefficient
- Model prediction
- Formula
- Fitted values
- Residuals
- Quantile-quantile plot

### Learning Objectives

- Perform simple linear regression in R
  - List assumptions made for linear regression
  - Visualize simple linear regression using the `ggplot` package
  - Identify outliers and decide whether to exclude them
  - Fit a linear model with continuous variables using `lm()`
  - Fit a linear model with dummy variables using `lm()`
  - Interpret diagnostic plots from a simple linear regression model
  - Calculate P-values from a linear model using `summary()`
  - Compare and evaluate linear models

### Datasets

- To be determined.

### Resources

- http://www-stat.wharton.upenn.edu/~moneyball/module7.html
- https://rstudio-pubs-static.s3.amazonaws.com/481001_86a6eab92f6844eeb9b6c370085e874e.html

## Lab 09

### Concepts/Glossary

- Interaction terms
- Dummy variable
- Model selection
- Akaike information criterion
- Overfitting
- Collinearity
- Bias-variance trade-off
- Non-linearity
- Correlation of error terms
- Heteroskedasticity
- Leverage
- Linear dimensional reduction
- Loading
- Biplot
- Scaling
- Scree plot

### Learning Objectives

- Perform multiple linear regression in R
  - Differentiate between simple and multiple linear models
  - Fit a multiple linear regression model using `lm()`
  - Interpret diagnostic plots from a multiple linear regression model
  - Interpret coefficients of linear models
  - Predict values using linear models
- Perform principal component analysis (PCA) using `prcomp()`
  - Explain importance of centering and scaling data prior to PCA
  - Evaluate PCA with scree plots using the `ggplot` package
  - Visualize principal components using the `ggplot` package
  - Explain the potential pitfalls with batch effects and PCA
  - Diagnose whether batch effects account for the top PCA components

### Datasets

- [AICDA expression](https://doi.org/10.1182/blood-2018-09-871418)
- A metagenomic dataset could be useful for demonstrating PCA.

### Resources

- https://www.geeksforgeeks.org/principal-component-analysis-with-r-programming/
- https://microbiome.github.io/tutorials/Ordination.html
- https://pubmed.ncbi.nlm.nih.gov/26650184/

## Lab 10

### Concepts/Glossary

- Accuracy
- Sensitivity
- Specificity
- Precision
- Recall
- Regularization
- Variable selection
- Lasso

### Learning Objectives

- Perform logistic regression in R
  - Fit a logistic model to a dataset using `glm()`
  - Interpret logistic model coefficients
  - Apply logistic regression to a classification problem
  - Visualize logistic regression using the `ggplot` package
  - Perform penalized logistic regression in R using lasso regularization with the `glmnet` package

### Datasets

- https://elifesciences.org/articles/37271

### Resources

- https://github.com/cloucks/dopamine_habituation/blob/master/bin/habituation_probability_plotNstats_CL.R

## Lab 11: Wisdom of the Forest

### Concepts/Glossary

- Hyperparameter
- Decision tree
- Bagging
- Variable importance
- Training data
- Test data
- Cross-validation

### Learning Objectives

- Perform random forest classification in R
  - Train a random forest model using the `randomForest` package
  - Optimize hyperparameters of a random forest model
  - Evaluate random forest models
  - Compare performance between random forest and logistic regression (with and without lasso regularization)
  - Identify important features using random forest

### Datasets

- [UCI Heart Disease Data Set](https://archive.ics.uci.edu/ml/datasets/Heart+Disease)
- [METABRIC expression and mutation dataset](https://www.kaggle.com/raghadalharbi/breast-cancer-gene-expression-profiles-metabric)s

### Resources

- https://datascienceplus.com/random-forests-in-r/
- https://rstudio-pubs-static.s3.amazonaws.com/300604_3da1e726964d47a794d3323ffb41264d.html#random-forests
- https://uc-r.github.io/random_forests

## Lab 12: Putting Things in Buckets

### Concepts/Glossary

- Dendrogram
- Heatmap
- Distance metric
- Euclidean distance
- Consensus clustering
- Stability
- Agglomerative clustering
- Bottom-up clustering
- Linkage
- Dendrogram cutting

### Learning Objectives

- Perform hierarchical clustering in R
  - Explain limitations of hierarchical clustering
  - Identify relevant distance metrics
  - Calculate distances using `dist()`
  - Perform clustering using `hclust()`
  - Visualize clustering using the `ggdendro` package
  - Perform and visualize clustering using the `pheatmap` package
  - Evaluate clustering using the `ConsensusClusterPlus` package

### Datasets

- [Pancreatic cancer subgroups](https://www.nature.com/articles/s41467-018-06498-2)
- [Yersinia distance metrics](https://github.com/WGS-TB/PathOGiST/tree/master/demo/package)

### Resources

- http://www.science.smith.edu/~jcrouser/SDS293/labs/lab16-r.html
- https://uc-r.github.io/hc_clustering

## Lab 13: Describe Data with Different and (Much) Fewer Perspectives

### Concepts/Glossary

- Graph-based clustering
- Embedding
- Non-deterministic algorithm
- Non-linear dimensional reduction

### Learning Objectives

- Perform linear dimensional reduction using PCAs
  - Explain why PCA is useful for graph-based clustering and non-linear dimensional reduction
  - Determine the dimensionality of the dataset (optimal number of principal components)
- Perform graph-based clustering
  - Explain advantages of graph-based clustering compared to other forms of unsupervised clustering
  - Evaluate graph-based clusters
- Perform uniform manifold approximation and projection (UMAP) using the `umap` package
  - Differentiate between linear and non-linear dimensional reduction
  - Visualize UMAP results using the `ggplot` package
  - Evaluate UMAP results using graph-based clusters and other covariates

### Datasets

- [Single-cell RNA-seq (mouse cortex)](https://www.nature.com/articles/nn.4216)
- [Single-cell RNA-seq (PBMCs)](https://support.10xgenomics.com/single-cell-gene-expression/datasets)

### Resources

- https://github.com/kdkorthauer/FestivalWorkshopVignettes/blob/master/SingleCellAnalyses.Rmd
- https://satijalab.org/seurat/v3.1/pbmc3k_tutorial.html
- https://github.com/STAT540-UBC/STAT540-UBC.github.io/blob/master/seminars/seminars_winter_2020/seminar6/sm06_clustering-pca.md

## Capstone Project

To be completed.
