# install.packages("htmltools")
library(htmltools)

# No need to run this code ever, it gets run by github action

# first: helper functions

height_of_exercise <- "800px"

wrap_in_html <- function(page_name, page_description, some_code){
  paste0("<!DOCTYPE html><html><body><h1>",page_name,"</h1><p>",page_description,"</p>",some_code,"</body></html>")
}

code_file_as_encoded_string <- function(file_path){
  file_content <- readLines(file_path, encoding = "UTF-8")
  file_string <- paste(file_content, collapse = "\n")
  file_string_encoded <- URLencode(file_string, reserved = TRUE)
  return(file_string_encoded)
}

exercise_html <- function(exercise_name, exercise_description, exercise_code_source_file){
  code_html_encoded <- code_file_as_encoded_string(exercise_code_source_file)
  code_iframe <- paste0("<iframe width='100%' height='",height_of_exercise,"' src='https://rdrr.io/snippets/embed/?code=",code_html_encoded,"' frameborder='0'></iframe>")
  paste0("<div height='",height_of_exercise,"'><h1>",exercise_name,"</h1><p>",exercise_description,"</p>",code_iframe,"</div>")
}

save_to_file <- function(filename, string_to_save){
  file_connection<-file(filename)
  writeLines(string_to_save, file_connection)
  close(file_connection)
}

# HERE EDIT exercise names, descriptions etc. 


assemble_whole_page <- function(){
  #TODO: use loop to do this once? but that could be c()s in c()s, grrr
  exercise_1_html <- exercise_html("Exercise 1: Unit conversion", "Your task here is to create functions that convert between metric and imperial systems.  The goal of this series of exercises is to understand functions better. Fill in the ____ with appropriate code.", 
                                   "exercise1.R" )
  exercise_2_html <- exercise_html("Exercise 2: Equality & Division", "In Exercise 1 we create 4 functions, 2 to convert temperature units and 2 to convert units of length. An even more ideal solution would be to have a single function that converted a numeric value depending on the conversion of interest (i.e., C_to_F, F_to_C, in_to_cm, or cm_to_in) - enter multiple arguments and conditional statements! We will also be using some test cases to determine if our functions work in the way we would expect.", 
                                   "exercise2.R" )
  exercise_3_html <- exercise_html("Exercise 3: Vectorization", "Your task here is to create a function called `categorize_value` that categorizes values based on the following conditions: less than 50 = low, less than or equal to 100 = medium, otherwise high.", "exercise3.R" )
  exercise_4_html <- exercise_html("Exercise 4: Functions wit Plots", "In this exercise, we will be using a function to programmatically change the colors of a plot. With have some data called `fruit_data` about sales of different types of fruit, represented in a bar chart. Use a function to programmatically color the bars based on if the sales are considered 'low', 'medium', or 'high'.", 
                                   "exercise4.R" )
  
  all_exercises_html <- paste0(exercise_1_html,exercise_2_html,exercise_3_html,exercise_4_html)
  
  full_page <- wrap_in_html("Pair Pogramming Exercises", "In the following exercises, you will be working with your partner(s) through a series of exercises demonstrating how to write functions in R. Do not worry if you do not get through all of the exercises. Switch the driver and navigator(s) roles after each exercise.", all_exercises_html)
  return(full_page)
}

full_page_html <- assemble_whole_page()



save_to_file(file.path('docs','index.html'), full_page_html)