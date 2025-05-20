# install.packages("htmltools")
library(htmltools)

# No need to run this code ever, it gets run by github action

# first: helper functions

height_of_exercise <- "800px"

wrap_in_html <- function(page_name, page_description, some_code){
  paste0("<!DOCTYPE html><html><head><head><link rel='stylesheet' type='text/css' href='style.css'></head><head><body><h1>",page_name,"</h1><p>",page_description,"</p>",some_code,"</body></html>")
}

code_file_as_encoded_string <- function(file_path){
  file_content <- readLines(file_path, encoding = "UTF-8")
  file_string <- paste(file_content, collapse = "\n")
  file_string_encoded <- URLencode(file_string, reserved = TRUE)
  return(file_string_encoded)
}

description_file_as_html <- function(file_path){
  file_content_lines <- readLines(file_path, encoding = "UTF-8")
  file_content <- paste0(file_content_lines, collapse = "</br>")
  print("file_content")
  print(file_content)
  return(file_content)
}

exercise_html <- function(exercise_name, exercise_source_files_name){
  exercise_description_file <- paste0(exercise_source_files_name,".md")
  exercise_code_source_file <- paste0(exercise_source_files_name,".R")
  code_html_encoded <- code_file_as_encoded_string(exercise_code_source_file)
  description_as_html <- description_file_as_html(exercise_description_file)
  print("yay?")
  print(description_as_html)
  code_iframe <- paste0("<iframe width='100%' height='",height_of_exercise,"' src='https://rdrr.io/snippets/embed/?code=",code_html_encoded,"' frameborder='0'></iframe>")
  code_and_hints <- paste0("<div ><div class='exercise-hint'>","<p>",description_as_html,"</p>","</div><div class='exercise-code'>",code_iframe,"</div></div>")
  paste0("<div height='",height_of_exercise,"'><h1>",exercise_name,"</h1>",code_and_hints,"</div>")
}

save_to_file <- function(filename, string_to_save){
  file_connection<-file(filename)
  writeLines(string_to_save, file_connection)
  close(file_connection)
}

# HERE EDIT exercise names, descriptions etc. 


assemble_whole_page <- function(){
  
  exercises_html <- c()
  exercises_html <- append(exercises_html, exercise_html("Exercise 1.1: Warmup (what are functions)", "exercise1.1" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 1.2: Unit conversion", "exercise1.2" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 1.3: Unit conversion", "exercise1.3" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 1.4: Unit conversion", "exercise1.4"))

  exercises_html <- append(exercises_html, exercise_html("Exercise 2.1: Functions with Multiple Arguments", "exercise2.1" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 2.2: Functions with Multiple Arguments", "exercise2.2" ))

  exercises_html <- append(exercises_html, exercise_html("Exercise 3.1: Functions and Vectorisation", "exercise3.1" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 3.2: Functions and Vectorisation", "exercise3.2"))

  exercises_html <- append(exercises_html, exercise_html("Exercise 4.1: Functions and Graphs", "exercise4.1" ))
  exercises_html <- append(exercises_html, exercise_html("Exercise 4.2: Functions and Graphs", "exercise4.2" ))

  all_exercises_ready_html <- paste0( exercises_html, collapse = " ")

  
  full_page <- wrap_in_html("Pair Pogramming Exercises",
                            description_file_as_html("description.md"), 
                            all_exercises_ready_html)
  return(full_page)
}

full_page_html <- assemble_whole_page()



save_to_file(file.path('docs','index.html'), full_page_html)