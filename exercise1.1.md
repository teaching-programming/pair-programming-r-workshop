## Solved Example 1.1: Functions in R are 'code shortcuts' to common things you want to do.

Functions 'take' some inputs/variables in round brackets; then perform some operations on those inputs in { } and then return one value with return(...).

add <- function( first_argument, second_argument ) {
  result <- first_argument + second_argument
  return(result)
}

Once defined, you can use your function ('run it') many times with different inputs. This saves you copy-pasting code.

result1 <- add( 4, 6 )
result2 <- add( 9, 7 )
result3 <- add( result1, result2 )

Read the following code and discuss with your partner(s) what it does. 
