# Exercise 3.2: 

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
# twice(values)
# is_positive(values)


# Vectorized solution 
is_positive_vectorized <- function(num){
  # either
  ifelse(num > 0, TRUE, FALSE)
  # or, even better, because > is vectorized, just
  # num > 0
}

is_positive_vectorized(values)



