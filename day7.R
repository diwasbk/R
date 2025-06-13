# DATA VISUALIZATION IN R

# 1. PIE CHARTS
# A pie chart is a circular chart divided into slices to illustrate numerical proportions.
# The `pie()` function is used to create a pie chart using positive numeric vectors.

# Basic Pie Chart
x <- c(30, 20, 35, 50)
labels <- c("Apple", "Banana", "Mango", "Orange")
pie(x, labels, main = "Fruits Pie Chart", col = rainbow(length(x)))  # Create pie chart with rainbow colors

# Adding Legend
legend("topright", labels, cex = 0.5, fill = rainbow(length(x)))

# 3D Pie Chart
# To create a 3D pie chart, we use the plotrix package
install.packages("plotrix")  # Install plotrix if not already installed
library(plotrix)  # Load the plotrix library

x1 <- c(50, 100, 75, 200)
labels1 <- c("Nepal", "China", "UK", "Korea")
pie3D(x = x1, labels = labels1, main = "Country Pie Chart", col = rainbow(length(x1)))
legend("topright", labels1, cex = 0.5, fill = rainbow(length(x1)))

