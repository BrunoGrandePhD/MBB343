# MBB 343: Data Science Laboratory for MBB

### Course Overview

These materials are designed for an elective 2-credit course in the Department of Molecular Biology and Biochemistry (MBB) at Simon Fraser University. This course is intended to accompany the lecture-based STAT 320 (Introduction to Data Science for the Life Sciences), a 2-unit course that will introduce life sciences students to data science. The examples in this lab course will be geared towards MBB students with an emphasis on molecular biology and genomic data. The expected enrollment is around 30 students.

Together, STAT 320 and MBB 343 will provide a gentle introduction to important tools in data science and will be tailored to students with no prior programming experience. The curriculum in this laboratory course will provide life sciences students with an opportunity to learn R, the most popular statistical programming language, which is commonly used for data science. During the STAT 320 lectures, students will learn theoretical and practical aspects of statistics that are directly relevant to this course. In addition, each 3-hour lab will begin with a 1-hour lecture that will provide more specific context on the topic and data being analyzed that week. These lectures will bridge the concepts taught in STAT 320 with relevant applications to biological data for students with a basic molecular biology background (MBB 222). Most weeks, students will take a quiz at the beginning of the lab to reinforce their understanding of the preparatory material.

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
  - Define a variable and retrieve its contents
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

## Lab 02: Data Structures

### Concepts/Glossary

- Vector
- Vector type (logical, integer, double, character)
- Type coercion
- Vector concatenation
- Vector length
- Vector recycling
- Data structure
- Class
- Factor
- Data frame
- List
- Matrix
- Subsetting
- Row/column/element names

### Learning Objectives

- Describe the main vector types (logical, integer, double, character)
  - Define vectors of length 1 for each type (without the `c()` function)
  - Define longer vectors using the `c()` function
  - Explain how vector types are enforced (type coercion)
  - Determine the type of an existing vector
  - Explain vectorization in R and why it's powerful
  - Describe how R recycles values
  - Differentiate and convert between character vectors and factors
- Describe higher-level data structures (lists, matrices, data frames)
  - Provide example use cases for data frames versus matrices
  - Explain how data frames are related to lists
  - Examine a data frame using `str()` and `head()`
  - Differentiate between the output of `typeof()` and `class()`
- Subset vectors and data structures using the `[` operator
  - Explain the implications of 1-based indexing in R
  - Select elements/rows/columns by position or name
  - Remove elements/rows/columns by position
  - Subset elements/rows/columns using logical operations or vectors
  - Differentiate between the `[` and the `[[` subsetting operators

### Datasets

- Built-in R datasets (`iris`, `mtcars`)

### Resources

- http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1
- http://swcarpentry.github.io/r-novice-gapminder/05-data-structures-part2
- http://swcarpentry.github.io/r-novice-gapminder/06-data-subsetting
- http://swcarpentry.github.io/r-novice-gapminder/09-vectorization

## Lab 03: Data Import and Wrangling I

### Concepts/Glossary

- Package
- CRAN
- Bioconductor
- File system
- File path (absolute vs relative)
- Working directory
- RStudio Projects
- Tibbles
- stringsAsFactors
- File format
- Plain text vs binary formats
- Logical AND vs OR
- Errors
- Warnings

### Learning Objectives

- Install packages from CRAN and Bioconductor
- Understand the basics of the file system
  - Identify and update the current working directory
  - Differentiate between absolute and relative paths
  - Explain how their working directory impacts their code
  - Use RStudio projects to automatically update the working directory
- Load data from tabular files (CSV, TSV) into R
  - Explain advantages of `readr` package over base R
  - Explain the `stringsAsFactors` argument
  - Explain advantages of tibbles over data frames
- Manipulate data frames in R using the `dplyr` package
  - Subset columns by name or condition using `select()`
  - Rename columns using `rename()`
  - Subset rows conditionally on one or more columns using `filter()`
  - Sort rows by one or more columns using `arrange()` and `desc()`
  - Create new columns from existing columns using `mutate()`
  - Explain advantages of using `dplyr` functions compared to base R equivalents
- Troubleshoot error messages in R

### Datasets

- [Gapminder](https://github.com/jennybc/gapminder/blob/master/inst/extdata/gapminder.tsv)
- [Snow algae metadata](https://github.com/cengstro/bc_snow_algae_amplicon/blob/master/data/field/tidy_field.csv)

### Resources

- http://swcarpentry.github.io/r-novice-gapminder/13-dplyr

## Lab 04: Data Wrangling II

### Concepts/Glossary

- Magrittr pipes
- Grouped tibble
- Aggregate statistics
- Wide vs long format
- Tidy format
- List columns

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

### Resources

- https://www.statsandr.com/blog/correlation-coefficient-and-correlation-test-in-r/

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

### Learning Objectives

- Perform simple linear regression in R
  - List assumptions made for linear regression
  - Visualize simple linear regression using the `ggplot` package
  - Identify outliers and decide whether to exclude them
  - Fit a linear model to a dataset using `lm()`
  - Interpret diagnostic plots from a simple linear regression model
  - Calculate P-values from a linear model using `summary()`
  - Compare and evaluate linear models

### Datasets

- To be determined.

### Resources

- To be completed

## Lab 09

### Concepts/Glossary

- To be completed.

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

### Datasets

- [AICDA expression](https://doi.org/10.1182/blood-2018-09-871418)
- A metagenomic dataset could be useful for demonstrating PCA.

### Resources

- https://www.geeksforgeeks.org/principal-component-analysis-with-r-programming/
- https://microbiome.github.io/tutorials/Ordination.html

## Lab 10

### Concepts/Glossary

- To be completed.

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

## Lab 11

### Concepts/Glossary

- To be completed.

### Learning Objectives

- Perform random forest classification in R
  - Train a random forest model using `randomForest`
  - Optimize hyperparameters of a random forest model
  - Evaluate random forest models
  - Compare performance between random forest and logistic regression (with and without lasso regularization)
  - Identify important features using random forest

### Datasets

- [UCI Heart Disease Data Set](https://archive.ics.uci.edu/ml/datasets/Heart+Disease)
- [METABRIC expression and mutation dataset](https://www.kaggle.com/raghadalharbi/breast-cancer-gene-expression-profiles-metabric)s

### Resources

- To be completed

## Lab 12

### Concepts/Glossary

- To be completed.

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

- To be completed

## Lab 13

### Concepts/Glossary

- To be completed.

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

### Datasets

- [Single-cell RNA-seq (mouse cortex)](https://www.nature.com/articles/nn.4216)
- [Single-cell RNA-seq (PBMCs)](https://support.10xgenomics.com/single-cell-gene-expression/datasets)

### Resources

- https://github.com/kdkorthauer/FestivalWorkshopVignettes/blob/master/SingleCellAnalyses.Rmd
- https://satijalab.org/seurat/v3.1/pbmc3k_tutorial.html

## Capstone Project

To be completed.
