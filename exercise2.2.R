#### Exercise 2.2: 

which_is_largest <- function ( first, second, third ){
  return("banana")
}

print("below should return strings: 'oh no!', 'oh no!', 'oh no!'")
which_is_largest(5, 5, 6) # oh no 
which_is_largest(5, 6, 6) # oh no 
which_is_largest(6, 6, 6) # oh no 

print("below should return strings: 'third','second','first'")
which_is_largest(4, 5, 6) # third
which_is_largest(4, 50, 6) #second
which_is_largest(40, 5, 6) #first
