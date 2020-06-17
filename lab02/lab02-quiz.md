# Lab 02: Quiz


Q2.1) What is a vector in R?

a. An ordered list of things
b. A list of things that must all be the same type
c. Something used in other R data structures
d. Something that can be recycled to ensure equal length
e. All of the above


Q2.2) How do you define a vector consisting of the **integers** 1, 2, 3, 4, and 5?

a. `(1, 2, 3, 4, 5)`
b. `c(1, 2, 3, 4, 5)`
c. `1:5`
d. `1L, 2L, 3L, 4L, 5L`
e. All of the above


Q2.3) Which of the following will **not** result in a vector of length 1?

a. `"5"`
b. `5`
c. `5L`
d. `TRUE`
e. None of the above


Q2.4) What vector type would this code result in: `c(TRUE, 2L, 3, "four")`?

a. `logical`
b. `integer`
c. `double`
d. `character`
e. None of the above


Q2.5) Which function would you use to determine whether a given vector is a logical vector? 

a. `class()`
b. `str()`
c. `typeof()`
d. `is.logical()`
e. All of the above


Q2.6) What would be the output vector from running this code: `as.numeric(c("two", "2"))`?

a. An error
b. `c(2, 2)`
c. `c(NA, 2)`
d. `c(2)`
e. None of the above


Q2.7) What vector does this code produce: `c(3, 4, 5) + 10`?

a. `c(3, 4, 5, 10)`
b. `c(13, 4, 5)`
c. `c(13, 14, 15)`
d. `c(3, 4, 15)`
e. None of the above


Q2.8) What vector does this code produce: `c(3, 4, 5) + c(10, 20)`?

a. `c(13, 24, 5)`
b. `c(13, 24, 15)`
c. `c(13, 14, 25)`
d. An error
e. None of the above


Q2.9) How is a factor different from a character vector?

a. A factor uses integers under the hood
b. A factor has levels
c. A factor is a more memory-efficient data structure
d. A factor has an implicit baseline/reference category
e. All of the above


Q2.10) What other data structure do data frames qualify as?

a. `matrix`
b. `vector`
c. `list`
d. CSV file
e. None of the above


Q2.11) What is a difference between data frames and matrices?

a. Unlike data frames, matrices contain purely numeric data
b. Unlike matrices, columns in data frames can have different lengths
c. Unlike matrices, data frames can have column and row names
d. Unlike data frames, matrices must contain the same data type
e. None of the above


Q2.12) Let's say you have the following named list consisting of three vectors: `list(a = c(1), b = c("one", "two"), c = c(TRUE, FALSE))`. What would you obtain if you were to convert it to a data frame using `as.data.frame()`?

a. An error because the list isn't valid
b. An error because the first vector is shorter than the others
c. A one-row data frame with the first element of each vector
d. A two-row data frame where the first vector is recycled
e. None of the above


Q2.13) How would inspect a data frame called `data` after loading it into R?

a. `data`
b. `str(data)`
c. `head(data)`
d. `summary(data)`
e. Any of the above


Q2.14) How would you extract the number `9` from the following vector: `x <- c(5, 9, 2, 3)`?

a. `x[9]`
b. `x[[9]]`
c. `x[2]`
d. `x[1]`
e. None of the above


Q2.15) How would you derive a vector without the number `9` from the following vector: `x <- c(5, 9, 2, 3)`?

a. `x[-2]`
b. `x[c(1, 3, 4)]`
c. `x[c(-2)]`
d. `c(x[1], x[3], x[4])`
e. All of the above


Q2.16) How would you assign names to each element in the following list: `x <- list(thing1, thing2)`?

a. `list(name1 = x[[1]], name2 = x[[2]])`
b. `setNames(x, c("name1", "name2"))`
c. `names(x) <- c("name1", "name2")`
d. All of the above
e. None of the above


Q2.17) How would you extract the positions that are greater than or equal to 3 from the following vector: `x <- c(5, 1, 4, 2, 7, 3)`?

a. `x >= 5`
b. `x[x >= 5,]`
c. `x[>= 5]`
d. `x[[x >= 5]]`
e. None of the above


Q2.18) How would you access the values stored in the third column in a data frame called `df`?

a. `df[,3]`
b. `df[[3,]]`
c. `df[3,]`
d. `df$3`
e. None of the above


Q2.19) How would you access the value stored in the second row of the third column in a data frame called `df`?

a. `df[(2,3)]`
b. `df[[2,3]]`
c. `df[3,2]`
d. `df[[3,2]]`
e. None of the above


Q2.20) How would you access the third value in the following list while ensuring the output is still a list: `x <- list(a = "tic", b = "tac", c = "toe")`?

a. `x[3]`
b. `x[[3]]`
c. `x[c]`
d. `x[[c]]`
e. `x$c`
