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
