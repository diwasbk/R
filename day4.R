# Data Frame in R

# A data frame is a two-dimensional, table-like structure.
# Each column contains values of a single variable, and each row is an observation.
# Unlike arrays, data frame columns can hold different types of data (e.g., numeric, character, etc.).
# It is also a special case of a list where each component (column) has equal length.

# 1. Creating a data frame

emp_data = data.frame(
  emp_id = c(1:5),                              # Employee IDs (integer vector)
  emp_name = c("RAM", "HARI", "SITA", "GITA", "SARITA"), # Employee names (character vector)
  emp_salary = c(3000, 5000, 4000, 1000, 2500)  # Employee salaries (numeric vector)
)

print(emp_data)            # Print the full data frame
str(emp_data)              # Show structure: types of each column (int, chr, num, etc.)


# 2. Extracting specific data

# Creating a new data frame with only name and salary columns
f1 = data.frame(emp_data$emp_name, emp_data$emp_salary)
print(f1)

# Extracting the 3rd row only
f2 = emp_data[3,]
print(f2)

# Extracting rows from 3rd to 5th
f3 = emp_data[3:5, ]
print(f3)

# Extracting the element in 3rd row and 2nd column (i.e., emp_name of 3rd employee)
f4 = emp_data[3, 2]
print(f4)


# 3. Adding new data

# Adding a new row using rbind()
x = list(6, "DIWAS", 8000)         # New employee data
emp_data = rbind(emp_data, x)      # Append new row to emp_data
emp_data                          # Show updated data frame

# Adding a new column using cbind()
y = c("Kathmandu", "Butwal", "Dang", "Gulmi", "Pokhara", "Biratnagar")  # Address column (6 entries for 6 rows)
emp_data = cbind(emp_data, emp_address = y)  # Append new column to emp_data
emp_data


# 4. Deleting rows and columns

emp_data = emp_data[-2, ]         # Delete 2nd row
print(emp_data)

emp_data$emp_address = NULL       # Delete emp_address column
print(emp_data)
