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


# 2. BAR CHARTS
# A bar chart is used to represent categorical data with rectangular bars.
# The height of each bar is proportional to the value it represents.

# Simple Bar Chart
marks <- c(70, 85, 60, 95, 50, 80)
subjects <- c("Physics", "Maths", "Nepali", "Computer", "Chemistry", "English")
barplot(marks, names.arg = subjects, xlab = "Subjects", ylab = "Marks", 
        main = "Marks Bar Chart", col = "yellow", border = "red")

# Grouped Bar Chart (Multiple Bars)
months <- c("Jan", "Feb", "March", "Apr", "May")
regions <- c("Province 1", "Province 2", "Province 3")
val <- matrix(c(21, 32, 33, 14, 95, 
                46, 67, 78, 39, 11, 
                22, 23, 94, 15, 26), 
              nrow = 3, ncol = 5, byrow = TRUE)

barplot(val, names.arg = months, xlab = "Months", ylab = "Revenue", 
        main = "Total Revenue", col = rainbow(length(regions)))
legend("topright", regions, cex = 0.8, fill = rainbow(length(regions)))


# 3. HISTOGRAM
# A histogram displays the frequency distribution of a continuous numeric variable.
# Unlike a bar chart, histograms show data distribution over intervals.

v <- c(12, 24, 16, 38, 21, 13, 55, 17, 39, 10, 60, 59, 58)
hist(v, xlab = "Weight", ylab = "Frequency", 
     main = "Distribution of Weight", col = "green", border = "red")

# Histogram with specified axis limits
hist(v, xlab = "Weight", ylab = "Frequency", 
     main = "Distribution of Weight", col = "yellow", border = "red", 
     xlim = c(0, 40), ylim = c(0, 3))


# 4. LINE GRAPH
# A line graph connects data points with lines to show trends over time.

v <- c(18, 22, 28, 7, 31, 100)
plot(v, xlab = "Month", ylab = "Temperature", 
     type = "o", col = "blue")  # type = "o" shows points and lines

# Adding multiple lines to the same graph
w <- c(34, 67, 89, 30, 45, 65)
x <- c(45, 56, 34, 20, 35, 50)
lines(w, type = "o", col = "red")
lines(x, type = "o", col = "green")


# 5. SCATTER PLOT
# A scatter plot is used to observe relationships between two numeric variables.

# Load mtcars dataset and select columns
library(dplyr)
d1 <- select(mtcars, wt, mpg)

# Scatter plot using base R
plot(x = d1$wt, y = d1$mpg, xlab = "Weight", ylab = "Mileage", 
     xlim = c(2.5, 5), ylim = c(15, 30), main = "Weight vs Mileage")

# Scatter plot using ggplot2
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point()

# Colored scatter plot based on number of gears
ggplot(mtcars, aes(x = drat, y = mpg)) + 
  geom_point(aes(color = factor(gear)))


# 6. BOX / WHISKER PLOT
# A boxplot shows the distribution of a numeric variable by displaying its five-number summary: 
# minimum, lower quartile (Q1), median (Q2), upper quartile (Q3), and maximum.

boxplot(mtcars$hp, xlab = "X", ylab = "Y", main = "Whisker/Box Plot", 
        horizontal = TRUE, notch = TRUE, col = "yellow", border = "red")

