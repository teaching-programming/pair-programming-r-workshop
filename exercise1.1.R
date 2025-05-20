## Exercise 1.1

number_of_full_dozens <- function( number_of_eggs ) {
  full_dozens <- number_of_eggs %/% 12 # %/% means "divide and keep integer"
  return(full_dozens)
}

print("below should return: 0,1,2,8")
number_of_full_dozens(11)
number_of_full_dozens(12)
number_of_full_dozens(25)
number_of_full_dozens(100)



is_first_larger <- function( first, second ) {
  return(first > second)
}

print("below should return: FALSE, TRUE, FALSE")
is_first_larger(11,12)
is_first_larger(12,11)
is_first_larger(12,12)

