#### Exercise 3.1: Create the `categorize_value` function as described above.
categorize_value <- function(x){
  if(x _____) {
    return("low")
  } else if (x _____) {
    return("medium")
  } else {
    return("high")
  }
}

#### Exercise 3.2: Test your `categorize_value()` function on the following cases: 35, 76, 187, 100 - does it work as expected? ####

# your code here! 

#### Exercise 3.3: Now test your `categorize_value()` value function with the `values` vector below. 

values <- c(45, 60, 150, 85, 20)

# your code here! 

#### Exercise 3.4: Oh no! An error - can you think why this error might have occurred? Discuss with your partner(s) ####

# discussion taking place...

#### Exercise 3.5: Not to to fear! Enter the map family of functions from the {purrr} package, which allows us to apply a function to each element of a vector, that is, to take a function that is not vectorized and still use vectorization! Huzzah! ifelse() statements are *NOT* vectorized, hence the above error. Most functions in R are vectorized, meaning that the function will operate on all elements of a vector without needing to loop through and act on each element one at a time. This makes writing code more concise, easy to read, and less error prone. Vectorization is a real superpower of R! ####

library(purrr)

# uncomment the code below to get started. The 2nd argument of `map_chr()` is the function to be applied 
# map_chr(values, ____)

# Notice, `values` is a vector with 5 elements, and the output of the map_chr function is a character vector with 5 elements! That is, the result of `categorize_value()` being applied to each element in the `values` vector. 

# Note of interest: In Exercise 2.3 the short-circuiting OR operator was used (||) as if statements are not vectorized/are a short-circuited operation. If || is used in a vectorized function, it will remove the vectorized properties of the function - so be careful!

