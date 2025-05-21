# Exercise 3.2: 
library(purrr)

twice <- function(num){
  return(num *2) 
}

is_positive <- function(num){
  if(num > 0){
    return(TRUE)
  } else{
    return(FALSE)
  }
} 

# uncomment the tests ONE AT THE TIME and see what happens.

values <- c(45, -60, 150, -85, 20)
#twice(values)
#is_positive(values)

#map_dbl(values, twice)
#map_lgl(values, is_positive)


