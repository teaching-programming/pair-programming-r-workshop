#### Exercise 4.2: 

library(ggplot2)
library(purrr)

# START your code here. Maybe start with some 'testing prints'?

categorize_and_color <- ....

# END your code here.

# and now we will use your function to add a column and then use that in the graph as our color fill aesthetic.
fruit_data <- data.frame(
  fruit = c("Apples", "Bananas", "Cherries", "Blueberries", "Oranges"),
  sales = c(100, 150, 8, 58, 90)
)

fruit_data$sales_color <- map(fruit_data$sales, categorize_and_color)

ggplot(data = fruit_data, aes(x = fruit, 
                              y = sales,
                              fill = sales_color)) + 
  geom_col()
