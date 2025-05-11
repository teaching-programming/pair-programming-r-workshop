#### Exercise 4.1: Create a function `categorize_sales_as_color` which takes a number, and returns a string 'red','orange' or 'green' based on some logic. 

library(ggplot2)
library(purrr)
fruit_data <- data.frame(
  fruit = c("Apples", "Bananas", "Cherries", "Blueberries", "Oranges"),
  sales = c(100, 150, 8, 58, 90)
)
ggplot(data = fruit_data, aes(x = fruit, y = sales)) + 
  geom_col()

# START your code here. Maybe start with some 'testing prints'?

categorize_and_color <- ....

# END your code here.

# an no we will use your function to add a column and then use that in the graph.
fruit_data$sales_color <- map(fruit_data$sales, categorize_and_color)
ggplot(data = fruit_data, aes(x = fruit, 
                              y = sales,
                              fill = sales_color)) + 
  geom_col()
