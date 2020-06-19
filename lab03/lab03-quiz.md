# Lab 03: Quiz

Q3.1) How would install an R package called `datascience` from CRAN?

- A. `library(datascience)`
- B. `library("datascience")`
- C. `install.packages(datascience)`
- D. `install.packages("datascience")`
- E. None of the above

Q3.2) Let's say your current working directory is `/home/someone/`. Which of the following file paths does **not** refer to the `data.csv` file in your `downloads` folder?

- A. `/home/someone/downloads/data.csv`
- B. `~/downloads/data.csv`
- C. `../someone/downloads/data.csv`
- D. `downloads/./data.csv`
- E. None of the above

Q3.3) How do you determine your working directory in R?

- A. `setwd()`
- B. `getwd()`
- C. `wd()`
- D. `cwd()`
- E. None of the above

Q3.4) Which of the following is not an advantage of using the `readr` package for loading data (_e.g._ `read_csv()`)?

- A. `readr` is generally faster than the base R equivalents
- B. `readr` produces tibbles instead of plain data frames.
- C. `readr` is more conservative when determining vector types for each column.
- D. `readr` has more sensible defaults, such as `stringsAsFactors = FALSE`.
- E. None of the above

Q3.5) Which of the following is an advantage of tibbles over plain data frames?

- C. Tibbles are safer to use.
- B. Tibbles are easier to work with.
- C. Tibbles are faster to use.
- D. Tibbles are more compatible with `dplyr`.
- E. All of the above

Q3.6) Which `dplyr` function would you use to move a column to the end of a data frame (_i.e._ at the right end)?

- A. `arrange()`
- B. `select()`
- C. `reorder()`
- D. `order()`
- E. None of the above

Q3.7) Let's say you have a data frame called `df` with a column called `date` and you want to relabel this column to `date_of_birth` for clarity. How would you do this?

- A. `rename(df, date = date_of_birth)`
- B. `rename(df, date <- date_of_birth)`
- C. `rename(df, date == date_of_birth)`
- D. `rename(df, date_of_birth = date)`
- E. None of the above

Q3.8) What would be the `dplyr` equivalent of the following piece of base R code, where `df` is a data frame: `df[df$count >= 5]`?

- A. `select(df, df$count >= 5)`
- B. `filter(df, count >= 5)`
- C. `select[df, df$count >= 5]`
- D. `subset(df, count >= 5)`
- E. None of the above

Q3.9) How would you filter a data frame called `df` for rows with the value `Canada` in the `country` character column?

- A. `filter(df, country == "Canada")`
- B. `filter(df, country = "Canada")`
- C. `filter(df, country == Canada)`
- D. `filter(df, country = Canada)`
- E. None of the above

Q3.10) How would you reorder a data frame called `df` such that the rows are in reverse alphabetical order based on the column `country`?

- A. `arrange(df, country)`
- B. `arrange(df, -country)`
- C. `arrange(df, desc(country))`
- D. `arrange(df, rev(country))`
- E. None of the above

Q3.11) Which of the following is **not** an advantage of using `dplyr` verbs (`select()`, `rename()`, `filter()`, `arrange()`, `mutate()`) compared to base R?

- A. `dplyr` verbs only need you to specify the data frame once
- B. `dplyr` verbs can perform tasks not possible in base R
- C. `dplyr` verbs are safer to use
- D. `dplyr` verbs are faster
- E. None of the above

Q3.12) What is CRAN?

- A. CRAN hosts package documentation
- B. CRAN hosts the R programming language
- C. CRAN hosts a repository of R packages
- D. CRAN is hosted in several locations worldwide
- E. All of the above

Q3.13) Why are RStudio projects useful?

- A. RStudio projects can install R packages
- B. RStudio projects make it possible to use RStudio
- C. RStudio projects store any variables you create
- D. RStudio projects automatically update the working directory
- E. All of the above

Q3.14) What is an R package?

- A. An R package is usually installed from the Internet
- B. An R package can contain datasets
- C. An R package can contain functions
- D. An R package is always documented
- E. All of the above

Q3.15) What is the result from the following piece of R code: `(TRUE & FALSE) | (TRUE & TRUE | FALSE)`?

- A. `TRUE`
- B. `NA`
- C. `FALSE`
- D. An error
- E. None of the above

Q3.16) Why are comma-separated values (CSV) files better than Excel spreadsheets?

- A. Plain text files will always be "openable"
- B. Plain text files are smaller in size
- C. Plain text files can be more easily compressed
- D. Plain text files can be more readily versioned and compared
- E. All of the above

Q3.17) Which `dplyr` function would you use to create a new column in a data frame?

- A. `<-`
- B. `transmute()`
- C. `mutate()`
- D. `select()`
- E. None of the above

Q3.18) How would you open the help page/manual for a function called `calc`?

- A. `??calc`
- B. `?calc`
- C. `manual(calc)`
- D. `calc(help)`
- E. All of the above

Q3.19) What is a common feature between the `dplyr` verbs (`select()`, `rename()`, `filter()`, `arrange()`, `mutate()`)?

- A. The `dplyr` verbs all check the input for errors
- B. The `dplyr` verbs all produce tibbles, even if the input is a data frame
- C. A data frame is the first argument for every `dplyr` verb
- D. The `dplyr` verbs never remove rows or columns
- E. All of the above

Q3.20) What is the philosophy of tidy data?

- A. There cannot be any missing data
- B. There cannot be any factors
- C. The data frame must be a square
- D. Each row is an observation and each column is a variable
- E. All of the above
