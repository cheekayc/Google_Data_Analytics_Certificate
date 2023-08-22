Explore coding in R
================

``` r
library(tidyverse)
library(lubridate)
```

# Conditional Statements

## *if* statement

``` r
x = 4

if(x > 0) {
  print("x is a positive number")
}
```

    ## [1] "x is a positive number"

## *else* statement

``` r
x = -7

if(x > 0) {
  print("x is a positive number")
} else {
  print("x is either a negative number or zero")
}
```

    ## [1] "x is either a negative number or zero"

## *else if* statement

``` r
x <- 0

if(x < 0) {
  print("x is a negative number")
} else if(x == 0) {
  print("x is zero")
} else{
  print("x is a positive number")
} 
```

    ## [1] "x is zero"
