# Lab 04: Quiz

Q4.1) When you use `summarize()` in combination with `group_by()` on a data frame called `df`, how many rows will the output data frame have?

- A. Equal to the number of rows in the input `df`
- B. Equal to the number of variables specified in `group_by()`
- C. Equal to the number of unique combinations of the variables specified in `group_by()` that appear in the data
- D. Equal to the number of all possible combinations of the variables specified in `group_by()`
- E. None of the above

Q4.2) Which of the following is **not** a special consideration to consider when picking a function to use in `summarize()` (after a `group_by()` operation)?

- A. The function must be vectorized (_i.e._ take a vector as input)
- B. The function must output a single value
- C. The function must be wrapped with `list()` if it outputs more than one value
- D. The function must be from the `dplyr` package
- E. All of the above

Q4.3) What is the difference between `group_by()` and `group_nest()`?

- A. `group_by` annotates the input whereas `group_nest()` reformats the input
- B. `group_nest()` creates a list-column with nested data frames
- C. `group_by` can be undone with `ungroup()` whereas `group_nest()` cannot
- D. `group_by()` can be used with `summarize()` and `mutate()` whereas `group_nest()` can only be used with `mutate()`
- E. All of the above

Q4.4) What would be the output of `summarize()` if you ran the function on a data frame without first running `group_by()`?

- A. An error
- B. A data frame with a single row
- C. A data frame with one row per unique value in the first column
- D. A vector
- E. None of the above

Q4.5) Is there any value in using `mutate()` (as opposed to `summarize()`) with `group_by()`?

- A. Yes, for when you want to keep the input data intact
- B. Yes, for when you are not calculating summary statistics
- C. No, because `group_by()` only makes sense when you summarize data
- D. No, because `group_by()` prevents you from adding new columns with `mutate()`
- E. None of the above

Q4.6) How does a wide data frame (as opposed to a long data frame) not adhere to the principles of tidy data?

- A. By having too many columns
- B. By being tailored for humans (more intuitive) rather than machines
- C. By not preventing missing data
- D. By having data stored in the column names
- E. All of the above

Q4.7) Under which circumstance is a wider layout for a data frame beneficial?

- A. For vectorized operations between columns
- B. For calculating averages across columns
- C. For using with `group_by()` and `summarize()`
- D. All of the above
- E. None of the above

Q4.8) Let's say you have a data frame called `df` with results for some assay in the following columns: `sample` (sample name), `control` (result for negative control), and `treatment` (result after treatment). How would you store all of the assay results in one column (rather than the two columns being used in `df`, namely `control` and `treatment`)?

- A. `pivot_wider(df, cols = sample)`
- B. `pivot_wider(df, cols = c(control, treatment))`
- C. `pivot_longer(df, cols = sample)`
- D. `pivot_longer(df, cols = c(control, treatment))`
- E. None of the above

Q4.9) Let's say you have a data frame called `df` with results for some assay done in triplicates in the following columns: `sample` (sample name), `condition` (control or treatment), `replicate` (1, 2, or 3), and `result` (assay measurement). How would you store the results from each replicate in six different columns (_i.e._ three for control and three for treatment)?

- A. `pivot_wider(df, id_cols = sample, names_from = c(condition, replicate))`
- B. `pivot_wider(df, id_cols = sample, values_from = c(condition, replicate))`
- C. `pivot_longer(df, id_cols = sample, names_from = c(condition, replicate))`
- D. `pivot_longer(df, id_cols = sample, values_from = c(condition, replicate))`
- E. None of the above

Q4.10)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.11)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.12)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.13)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.14)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.15)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.16)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.17)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.18)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.19)

- A.
- B.
- C.
- D.
- E. None of the above

Q4.20)

- A.
- B.
- C.
- D.
- E. None of the above
