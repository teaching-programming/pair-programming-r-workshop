# Exercise 4.1: starting code.
# Have a read and run it. What does it do?

library(ggplot2)
library(purrr)

fruit_data <- data.frame(
  fruit = c("Apples", "Bananas", "Cherries", "Blueberries", "Oranges"),
  sales = c(100, 150, 8, 58, 90)
)

ggplot(data = fruit_data, aes(x = fruit, 
                              y = sales)) + 
  geom_col()
