## Exercise 3.2

One at the time, uncomment the tests ONE AT THE TIME and see what happens. Discuss with your partner(s).
 
~ Only after running the tests and exploring the output, read below ~ 


... oh no, a warning and unexpected result! ...

Not to to fear! Enter the map family of functions from the {purrr} package.

It allows us to apply a function to each element of a vector, that is, to take a function that is not vectorized and still use vectorization! Huzzah! 

ifelse() statements are *NOT* vectorized, hence the above error.

Most functions in R are vectorized, meaning that the function will operate on all elements of a vector without needing to loop through and act on each element one at a time.

This makes writing code more concise, easy to read, and less error prone. Vectorization is a real superpower of R!
