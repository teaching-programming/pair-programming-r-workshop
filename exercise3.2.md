## Exercise 3.2

One at the time, uncomment the tests ONE AT THE TIME and see what happens. Discuss with your partner(s).
 
~ Only after running the tests and exploring the output, read below ~ 


... oh no, an error! ...

Not to to fear!

Most functions in R are vectorized, meaning that the function will operate on all elements of a vector without needing to loop through and act on each element one at a time.

if else statements are *NOT* vectorized, hence the above error. However, the * (multiplication operator) is vectorized, which is why the twice function works with the values vector!

Vectorization is a real superpower of R! It makes writing code more concise, easy to read, and less error prone.

There is a vectorized if else statement in R, ifelse(), which we show in the is_positive_vectorized() function as well.  
