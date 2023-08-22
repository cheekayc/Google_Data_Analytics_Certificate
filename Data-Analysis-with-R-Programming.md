Data Analysis with R Programming
================

``` r
library(tidyverse)
library(lubridate)
```

# Week 2

## Vectors and Lists in R

### Naming and creating vectors

1.  Store numeric data.

``` r
num_vec1 = c(2.5, 48.5, 101.5)

num_vec1
```

    ## [1]   2.5  48.5 101.5

2.  Store integers (must place the letter “L” directly after each
    number)

``` r
int_vec1 = c(1L, 5L, 15L)

int_vec1
```

    ## [1]  1  5 15

3.  Store character data.

``` r
char_vec1 = c("Lisa", "Rose", "Jennie", "Jisoo")

char_vec1
```

    ## [1] "Lisa"   "Rose"   "Jennie" "Jisoo"

4.  Store logical data.

``` r
bool_vec1 = c(TRUE, FALSE, TRUE)

bool_vec1
```

    ## [1]  TRUE FALSE  TRUE

### Determining properties of vectors

Use `typeof()` function.

``` r
typeof(num_vec1)
```

    ## [1] "double"

``` r
typeof(int_vec1)
```

    ## [1] "integer"

``` r
typeof(char_vec1)
```

    ## [1] "character"

``` r
typeof(bool_vec1)
```

    ## [1] "logical"

We can also check if a vector is a specific type by using an **`is`**
function: `is.logical()`, `is.double()`, `is.integer()`,
`is.character()`.

For the example of `is.integer()`, R will return a value of `TRUE` if
the vector contains integer.

``` r
is.integer(int_vec1)
```

    ## [1] TRUE

``` r
is.integer(num_vec1)
```

    ## [1] FALSE

### Creating lists

Lists’ elements can be of any type - like dates, data frames, vectors,
matrices, and more. Lists can even contain other lists.

``` r
list_1 = list("Blackpink", 4L, 5.5, TRUE)

list_1
```

    ## [[1]]
    ## [1] "Blackpink"
    ## 
    ## [[2]]
    ## [1] 4
    ## 
    ## [[3]]
    ## [1] 5.5
    ## 
    ## [[4]]
    ## [1] TRUE

``` r
list_2 = list(list(list(1, 3, 5)))

list_2
```

    ## [[1]]
    ## [[1]][[1]]
    ## [[1]][[1]][[1]]
    ## [1] 1
    ## 
    ## [[1]][[1]][[2]]
    ## [1] 3
    ## 
    ## [[1]][[1]][[3]]
    ## [1] 5

### Determining the structure of lists

Use the `str()` function.

``` r
str(list_1)
```

    ## List of 4
    ##  $ : chr "Blackpink"
    ##  $ : int 4
    ##  $ : num 5.5
    ##  $ : logi TRUE

``` r
str(list_2)
```

    ## List of 1
    ##  $ :List of 1
    ##   ..$ :List of 3
    ##   .. ..$ : num 1
    ##   .. ..$ : num 3
    ##   .. ..$ : num 5

### Naming lists

``` r
list_3 = list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

list_3
```

    ## $Chicago
    ## [1] 1
    ## 
    ## $`New York`
    ## [1] 2
    ## 
    ## $`Los Angeles`
    ## [1] 3

``` r
list_3$`New York`
```

    ## [1] 2

## Dates and Times in R

To get the **current date**, run the `today()` function.

``` r
today()
```

    ## [1] "2023-08-22"

To get the **current date-time**, run the `now()` function.

``` r
now()
```

    ## [1] "2023-08-22 16:45:29 CDT"

### Converting from strings to date

``` r
ymd(20200119)
```

    ## [1] "2020-01-19"

``` r
ymd("2021-02-20")
```

    ## [1] "2021-02-20"

``` r
mdy("March 21th, 2022")
```

    ## [1] "2022-03-21"

``` r
dmy("22-Apr-2023")
```

    ## [1] "2023-04-22"

### Creating date-time components

``` r
ymd_hms("2020-01-19 20:11:59")
```

    ## [1] "2020-01-19 20:11:59 UTC"

``` r
mdy_hm("01/20/2021 08:01")
```

    ## [1] "2021-01-20 08:01:00 UTC"

### Switching between date-time & date

To convert a date-time to date, use `as_date()` function.

``` r
now()
```

    ## [1] "2023-08-22 16:45:29 CDT"

``` r
as_date(now())
```

    ## [1] "2023-08-22"

### Data Frames

1.  Columns should be named.
2.  Data frames can include many different types of data.
3.  Elements in the same column should be of the same type.

``` r
df1 = data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))

df1
```

    ##   x   y
    ## 1 1 1.5
    ## 2 2 5.5
    ## 3 3 7.5

### Files

To create new **folder**, use `dir.create()` function. Place the name of
the folder in the () of the function.

``` r
dir.create("destination_folder")
```

To create a blank **file**, use `file.create()` function. Place the name
and the type of file in the () of the function. If the file is
successfully created when the function is run, R will return a value of
`TRUE` (if not, R will returm `FALSE`).

``` r
file.create("new_text_file.txt")
file.create("new_word_file.docx")
file.create("new_csv_file.csv")
```

To **copy** a **file**, use `file.copy()` function. In the (), add the
name of the file to be copied, comma, then the name of the destination
folder where we want to save the copy file.

``` r
file.copy("name_of_file.txt", "destination_folder")
```

To **delete** a file, use `unlink()` function. Enter the file name in
the () of the function.

``` r
unlink("file_name.csv")
```

## Matrices

To create matrix, use `matrix()` function. First, add a vector. Next,
add at least one matrix dimension.

``` r
# Example: Create a 2x3 (rows x columns) matrix containing the values 3-8.
matrix(c(3:8), nrow = 2)
```

    ##      [,1] [,2] [,3]
    ## [1,]    3    5    7
    ## [2,]    4    6    8

``` r
# Example: Create a 3x2 (rows x columns) matrix containing the values 3-8.
matrix(c(3:8), ncol = 2)
```

    ##      [,1] [,2]
    ## [1,]    3    6
    ## [2,]    4    7
    ## [3,]    5    8
