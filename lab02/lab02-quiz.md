# Lab 02: Quiz


Q2.1) What is a vector in R?

A. An ordered list of things
B. A list of things that must all be the same type
C. Something used in other R data structures
D. Something that can be recycled to ensure equal length
E. All of the above


Q2.2) How do you define a vector consisting of the **integers** 1, 2, 3, 4, and 5?

A. `(1, 2, 3, 4, 5)`
B. `c(1, 2, 3, 4, 5)`
C. `1:5`
D. `1L, 2L, 3L, 4L, 5L`
E. All of the above


Q2.3) Which of the following will **not** result in a vector of length 1?

A. `"5"`
B. `5`
C. `5L`
D. `TRUE`
E. None of the above


Q2.4) What vector type would this code result in: `c(TRUE, 2L, 3, "four")`?

A. `logical`
B. `integer`
C. `double`
D. `character`
E. None of the above


Q2.5) Which function would you use to determine whether a given vector is a logical vector? 

A. `class()`
B. `str()`
C. `typeof()`
D. `is.logical()`
E. All of the above


Q2.6) What would be the output vector from running this code: `as.numeric(c("two", "2"))`?

A. An error
B. `c(2, 2)`
C. `c(NA, 2)`
D. `c(2)`
E. None of the above


Q2.7) What vector does this code produce: `c(3, 4, 5) + 10`?

A. `c(3, 4, 5, 10)`
B. `c(13, 4, 5)`
C. `c(13, 14, 15)`
D. `c(3, 4, 15)`
E. None of the above


Q2.8) What vector does this code produce: `c(3, 4, 5) + c(10, 20)`?

A. `c(13, 24, 5)`
B. `c(13, 24, 15)`
C. `c(13, 14, 25)`
D. An error
E. None of the above


Q2.9) How is a factor different from a character vector?

A. A factor uses integers under the hood
B. A factor has levels
C. A factor is a more memory-efficient data structure
D. A factor has an implicit baseline/reference category
E. All of the above


Q2.10) What other data structure do data frames qualify as?

A. `matrix`
B. `vector`
C. `list`
D. CSV file
E. None of the above


Q2.11) What is a difference between data frames and matrices?

A. Unlike data frames, matrices contain purely numeric data
B. Unlike matrices, columns in data frames can have different lengths
C. Unlike matrices, data frames can have column and row names
D. Unlike data frames, matrices must contain the same data type
E. None of the above


Q2.12) Let's say you have the following named list consisting of three vectors: `list(a = c(1), b = c("one", "two"), c = c(TRUE, FALSE))`. What would you obtain if you were to convert it to a data frame using `as.data.frame()`?

A. An error because the list isn't valid
B. An error because the first vector is shorter than the others
C. A one-row data frame with the first element of each vector
D. A two-row data frame where the first vector is recycled
E. None of the above


Q2.13) How would inspect a data frame called `data` after loading it into R?

A. `data`
B. `str(data)`
C. `head(data)`
D. `summary(data)`
E. Any of the above


Q2.14) How would you extract the number `9` from the following vector: `x <- c(5, 9, 2, 3)`?

A. `x[9]`
B. `x[[9]]`
C. `x[2]`
D. `x[1]`
E. None of the above


Q2.15) How would you derive a vector without the number `9` from the following vector: `x <- c(5, 9, 2, 3)`?

A. `x[-2]`
B. `x[c(1, 3, 4)]`
C. `x[c(-2)]`
D. `c(x[1], x[3], x[4])`
E. All of the above


Q2.16) How would you assign names to each element in the following list: `x <- list(thing1, thing2)`?

A. `list(name1 = x[[1]], name2 = x[[2]])`
B. `setNames(x, c("name1", "name2"))`
C. `names(x) <- c("name1", "name2")`
D. All of the above
E. None of the above


Q2.17) How would you extract the positions that are greater than or equal to 3 from the following vector: `x <- c(5, 1, 4, 2, 7, 3)`?

A. `x >= 5`
B. `x[x >= 5,]`
C. `x[>= 5]`
D. `x[[x >= 5]]`
E. None of the above


Q2.18) How would you access the values stored in the third column in a data frame called `df`?

A. `df[,3]`
B. `df[[3,]]`
C. `df[3,]`
D. `df$3`
E. None of the above


Q2.19) How would you access the value stored in the second row of the third column in a data frame called `df`?

A. `df[(2,3)]`
B. `df[[2,3]]`
C. `df[3,2]`
D. `df[[3,2]]`
E. None of the above


Q2.20) How would you access the third value in the following list while ensuring the output is still a list: `x <- list(a = "tic", b = "tac", c = "toe")`?

A. `x[3]`
B. `x[[3]]`
C. `x[c]`
D. `x[[c]]`
E. `x$c`
