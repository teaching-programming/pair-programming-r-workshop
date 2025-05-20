## Exercise 3.1: 

twice <- function(num){
  return(num *2) 
}

print("below should return: 4, 88")
twice(2)
twice(44)
# your tests here 

is_positive <- function(num){
  if(num > 0){
    return(TRUE)
  } else{
    return(FALSE)
  }
} 

print("below should return: FALSE, TRUE")
is_positive(-20)
is_positive(50)
# your tests here 

