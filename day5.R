# Get the current working directory
getwd()

# Set the working directory
setwd("C:\\Users\\Diwas\\Desktop\\R")

# Sorting a vector
v = c(2, 56, 79, 23, 1, 9, 45)
sort(v)                      # Sort in ascending order
sort(v, decreasing = TRUE)   # Sort in descending order

# Importing data from a CSV file
students = read.csv("student_habits_performance.csv")

# Exploring the dataframe
View(students)               # Open the dataframe in a viewer
fix(students)                # Edit the dataframe
str(students)                # Structure of the dataframe
summary(students)            # Summary statistics
names(students)              # Variable names
nrow(students)               # Number of rows
ncol(students)               # Number of columns
length(students)             # Number of columns (for data frames)
dim(students)                # Dimensions (rows and columns)
colnames(students)           # Column names
head(students)               # First 6 rows
tail(students)               # Last 6 rows

# Viewing a subset of data
s1 = students[1:10, ]        # First 10 rows
View(s1)

# Adding a new column using $
students$total_screen_hr = students$social_media_hours + students$netflix_hours

# Get the max and min screen time
max(students$total_screen_hr)
min(students$total_screen_hr)

# Get the details of the student with the highest screen time
details = subset(students, total_screen_hr == max(total_screen_hr))
View(details)

# Get details of students with attendance >= 80%
good_attendance = subset(students, attendance_percentage >= 80)
View(good_attendance)

# Get students who have a part-time job and attendance > 90%
best_attendance = subset(students, attendance_percentage >= 90 & part_time_job == "Yes")
View(best_attendance)

# Deleting a column from the dataframe
a1 = subset(students, select = -total_spent_hr)
View(a1)


# Data Manipulation using dplyr package
install.packages("dplyr")   # Install the dplyr package
library("dplyr")            # Load the dplyr package

# Read the data again
our_students = read.csv("student_habits_performance.csv")
View(our_students)

# Select specific columns
d1 = select(our_students, student_id, age, gender)
View(d1)

# Select all columns except "age"
d2 = select(our_students, -age)
View(d2)

# Select a range of columns
d3 = select(our_students, age:netflix_hours)
View(d3)

# Select columns that start with "st"
d4 = select(our_students, starts_with("st"))
View(d4)

# Select columns that end with "rs"
d5 = select(our_students, ends_with("rs"))
View(d5)

# Select columns that contain "art"
d6 = select(our_students, contains("art"))
View(d6)

# Filter male students who are 18 or younger
childrens = filter(our_students, age <= 18, gender == "Male")
View(childrens)
