#### Set up #### 

library(ggplot2)
library(purrr)

# create data frame 
fruit_data <- data.frame(
  fruit = c("Apples", "Bananas", "Cherries", "Blueberries", "Oranges"),
  sales = c(100, 150, 8, 58, 90)
)

# create starting bar chart
ggplot(data = fruit_data, aes(x = fruit, y = sales)) + 
  geom_col()

#### Exercise 4.1: Edit the function created in Exercise 3 such that low values are "red", medium values "yellow", and high values "green". ####

categorize_and_color <- function(sales){
  if (sales < 50) {
    return(____)
  } else if (sales <= 100) {
    return(____)
  } else {
    return(____)
  }
}

#### Exercise 4.2: Apply our new function `categorize_and_color` to create a new column in our dataframe ####

fruit_data$sales_color <- map(fruit_data$sales, _______)

#### Exercise 4.3: Now update the bar char code to color the bars based on our new column `sales_color` ####

ggplot(data = fruit_data, aes(x = fruit, 
                              y = sales,
                              fill = _____)) + 
  geom_col()

#### Exercise 4.4: Further customize the plot if you have time (e.g., legend position, more meaningful labels, theme, more refined colors, etc.) ####

# Your code here! 

#### Bonus: Can you think of another approach to solving this exercise? As always in R, there is more than one way to accomplish a task! ####


