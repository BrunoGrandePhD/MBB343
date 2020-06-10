# MBB 343: Data Science Laboratory for MBB

## Lab 01

### Motivation

In this lesson, you will learn how to effectively use the RStudio text editor, which will become your primary tool for writing R code in the rest of this lab course. You will be able to customize this tool to your liking and discover features that will increase your productivity. You will also learn the fundamental concept of the file system, which you will use every time you read and write a file. Tools such as RStudio and R packages will simplify the complexity of the file system. Lastly, you will learn about the incredible repositories of R packages that you can leverage in your analyses, namely the Comprehensive R Archive Network (CRAN) and Bioconductor. This lesson creates the foundation required for becoming an R user and data scientist.

### Concepts/Glossary

- R
- RStudio
- Text editor (vs word processor)
- Reproducibility
- Package
- File system
- File path (absolute vs relative)
- Working directory
- Script
- Console
- Run/Source
- RStudio projects
- CRAN
- Bioconductor

### Learning Objectives

- Install the R programming language and the RStudio text editor
  - Or create an account on rstudio.cloud
- Navigate the RStudio text editor interface
  - Customize RStudio preferences for better reproducibility and accessibility
  - Describe the purpose of the main panes (Source, Console, Environment, History, Files, Plots, Packages, Help)
  - Differentiate between writing R code in the console versus scripts
  - Discover RStudio keyboard shortcuts for commonly performed tasks
  - Edit RStudio keyboard shortcuts and create new ones
  - List favourite RStudio keyboard shortcuts
  - Locate important options and buttons in RStudio (Global Options, Projects, Open/Save, Run/Source)
- Understand the basics of the file system
  - Identify and update the current working directory
  - Differentiate between absolute and relative paths
  - Explain how their working directory impacts their code
  - Use RStudio projects to automatically update the working directory
  - Use the `here` package to normalize file paths
- Install packages from CRAN and Bioconductor
-

### Beyond the Scope

- To be completed.

### Datasets

No data will be used in this lab.

## Resources

- http://swcarpentry.github.io/r-novice-gapminder/01-rstudio-intro
- http://swcarpentry.github.io/r-novice-gapminder/02-project-intro
- http://swcarpentry.github.io/r-novice-gapminder/03-seeking-help

## Lab 02

### Motivation

In this lesson, you will write your first R statements, starting with basic arithmetic and comparisons. As you proceed through the material, you will be introduced to the various data structures that are foundational to R, ranging from simple atomic vectors to heterogeneous data frames. These data structures serve different purposes in the data science workflow in R, and knowing these is key to being an effective R programmer. You will also learn how to access the contents of these data structures,

functions, how to use them, how to create them, and how to get more of them from installing packages. As you will see, without functions, it would be incredibly tedious to be a data scientist. All in all, you will use what you learn in this lesson every time you code in R.

### Concepts/Glossary

- Statement
- Prompt (> vs +)
- Arithmetic operator
- Variable
- Object
- Assignment
- Assignment operator (<- vs =)
- Environment
- Vector (atomic)
- Vector type (logical, integer, double, character)
- Vector concatenation
- Vectorization
- Function
- Vector recycling
- Sequences
- Logical operator
- List
- Matrix
- Data frame
- Subsetting/extracting

### Learning Objectives

- Write simple R statements
  - Perform simple arithmetic calculations
  - List arithmetic operators (+, -, \*, /, ^, ()) and their precedence
  - Compare values with logical operators (`==`/`!=`, `<`/`<=`, `>`/`>=`)
  - Describe the structure and behaviour of a function call
  - Define a variable and retrieve its contents
- Describe the main vector types (logical, integer, double, character)
  - Define vectors of length 1 for each type (without the `c()` function)
  - Define longer vectors for each type using the `c()` function
  - Describe how R recycles values
  - Explain vectorization in R and why it's useful
  - Create sequences of numbers using the colon (`:`) notation
- Describe higher-level data structures (lists, matrices, data frames)
  - Provide example use cases for data frames versus matrices
  - Explain how data frames are related to lists
  - Subset

### Beyond the Scope

- To be completed.

### Datasets

- Built-in R datasets (`iris`, `mtcars`)

## Resources

- http://swcarpentry.github.io/r-novice-gapminder/10-functions
- http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1
- http://swcarpentry.github.io/r-novice-gapminder/06-data-subsetting
- http://swcarpentry.github.io/r-novice-gapminder/09-vectorization

## Lab 03

### Motivation

To be completed.

### Concepts/Glossary

- Tibbles
- Factors
- stringsAsFactors
- File format
- Plain text vs binary formats
-

### Learning Objectives

- Load data from files into R
  - Explain advantages of `readr` package over base R
  - Explain the `stringsAsFactors` argument
  - Explain advantages of tibbles over data frames
- Manipulate data frames in R using the `dplyr` package
  - Subset columns by name or condition using `select()`
  - Rename columns using `rename()`
  - Subset rows conditionally on one or more columns using `filter()`
  - Sort rows by one or more columns using `arrange()` and `desc()`
  - Create new columns from existing columns using `mutate()`
- Troubleshoot error messages in R

### Beyond the Scope

- To be completed.

### Datasets

- https://github.com/cengstro/bc_snow_algae_amplicon/blob/master/data/field/tidy_field.csv

## Resources

- http://swcarpentry.github.io/r-novice-gapminder/05-data-structures-part2
- http://swcarpentry.github.io/r-novice-gapminder/13-dplyr
- http://swcarpentry.github.io/r-novice-gapminder/11-writing-data

## Lab 04

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- This should be the same dataset as Lab 03.

## Resources

- http://swcarpentry.github.io/r-novice-gapminder/13-dplyr
- http://swcarpentry.github.io/r-novice-gapminder/14-tidyr

## Lab 05

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- http://swcarpentry.github.io/r-novice-gapminder/08-plot-ggplot2

## Lab 06

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- https://www.statsandr.com/blog/correlation-coefficient-and-correlation-test-in-r/

## Lab 07

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- A simple albeit naive application of these categorical tests are genome-wide associated studies. Possible datasets would include a salmonid genomic/SNP dataset from the Davidson lab.

## Resources

- To be completed

## Lab 08

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

### Learning Objectives

- Perform simple linear regression in R
  - List assumptions made for linear regression
  - Visualize simple linear regression using the `ggplot` package
  - Identify outliers and decide whether to exclude them
  - Fit a linear model to a dataset using `lm()`
  - Interpret diagnostic plots from a simple linear regression model
  - Calculate P-values from a linear model using `summary()`
  - Compare and evaluate linear models

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- To be completed

## Lab 09

### Motivation

To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- A metagenomic dataset could be useful for demonstrating PCA.

## Resources

- https://www.geeksforgeeks.org/principal-component-analysis-with-r-programming/

## Lab 10

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

### Learning Objectives

- Perform logistic regression in R
  - Fit a logistic model to a dataset using `glm()`
  - Interpret logistic model coefficients
  - Apply logistic regression to a classification problem
  - Visualize logistic regression using the `ggplot` package
  - Perform penalized logistic regression in R using lasso regularization with the `glmnet` package

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- To be completed

## Lab 11

### Motivation

To be completed.

### Concepts/Glossary

- To be completed.

### Learning Objectives

- Perform random forest classification in R
  - Train a random forest model using `randomForest`
  - Optimize hyperparameters of a random forest model
  - Evaluate random forest models
  - Compare performance between random forest and logistic regression (with and without lasso regularization)
  - Identify important features using random forest

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- To be completed

## Lab 12

### Motivation

To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- To be determined.

## Resources

- To be completed

## Lab 13

### Motivation

To be completed.

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

### Beyond the Scope

- To be completed.

### Datasets

- One of the [10X Datasets](https://support.10xgenomics.com/single-cell-gene-expression/datasets). Perhaps the one used by the [Seurat vignette](https://satijalab.org/seurat/v3.1/pbmc3k_tutorial.html).
