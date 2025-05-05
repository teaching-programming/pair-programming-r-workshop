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
  exercise_1_html <- exercise_html("Exercise 1", "Your task here is to....", "exercise1.R" )
  exercise_2_html <- exercise_html("Exercise 2", "Your task here is to....", "exercise2.R" )
  exercise_3_html <- exercise_html("Exercise 3", "Your task here is to....", "exercise3.R" )
  exercise_4_html <- exercise_html("Exercise 4", "Your task here is to....", "exercise4.R" )
  
  all_exercises_html <- paste0(exercise_1_html,exercise_2_html,exercise_3_html,exercise_4_html)
  
  full_page <- wrap_in_html("Pair Pogramming Exercises", "Some explanation what this is about", all_exercises_html)
  return(full_page)
}

full_page_html <- assemble_whole_page()



save_to_file(file.path('docs','index.html'), full_page_html)