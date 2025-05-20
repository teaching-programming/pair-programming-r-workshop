## Exercise 3.2

Copy-paste your solution to 3.1 and one at the time, uncomment the tests ONE AT THE TIME and see what happens. Discuss with your partner(s).
 
 
 
 
 
~ read the below after running the tests one at a time and exploring the output ~ 
 
 
 
 
 

... oh no, an error! ...

Not to to fear! Enter the map family of functions from the {purrr} package.

It allows us to apply a function to each element of a vector, that is, to take a function that is not vectorized and still use vectorization! Huzzah! 

ifelse() statements are *NOT* vectorized, hence the above error.

Most functions in R are vectorized, meaning that the function will operate on all elements of a vector without needing to loop through and act on each element one at a time.

This makes writing code more concise, easy to read, and less error prone. Vectorization is a real superpower of R!
