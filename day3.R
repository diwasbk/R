# Data Structures in R

# 1. Vectors
# Vectors are one-dimensional arrays that hold data of the same type.
# Elements of a vector are known as components.
# length(): Function to find the number of elements in a vector.
# Atomic vector vs list: Atomic vectors contain elements of the same type; lists can have mixed types.

a = c(2, 3, 4, 5, 6, 7, 8)             # Creating a numeric vector
print(a)                              # Printing the vector

# Numeric vector
n1 = c(12.3, 43.5, 56.7, 86.5)        # Creating a numeric vector
class(n1)                             # Checking the class of n1
class(as.integer(n1))                # Converting numeric to integer and checking its class

# Character vector
c1 = c("Shilpa", "Stha", "NOC", "Lalitpur")  # Creating a character vector
print(c1)                                    # Printing the character vector
class(c1)                                    # Checking the class

# Logical vector
l1 = c(TRUE, FALSE)                  # Creating a logical vector
class(l1)                            # Checking the class

# Accessing the elements of a vector (using indexing)
vect1 = c("Diwas", "Bishwokarma", "IT", "Student")  # Creating a character vector
vect1[1]                              # Accessing the first element
vect1[2]                              # Accessing the second element
vect1[50]                             # Trying to access a non-existing index (returns NA)
vect1[-2]                             # Removes the second element
vect1[1:3]                            # Accessing a range from the 1st to 3rd element

v3 = c("Diwas" = 230185, "Age" = 22, "Weight" = "60kg")  # Named vector
v3["Diwas"]                          # Accessing element by name
v3["Weight"]                         # Accessing element by name

# Vector operations
a1 = c(1, 2, 3, 4, 5)                # Numeric vector
a2 = c("Apple", "Banana", "Mango", "Orange", 6, 7)  # Mixed vector, coerced to character
a3 = c(a1, a2)                       # Combining both vectors
print(a3)                            # Printing the combined vector

l1 = c(2, 4, 5)                      # Numeric vector
l2 = c(8, 9, 6)                      # Numeric vector
l1 + l2                              # Element-wise addition
l1 - l2                              # Element-wise subtraction
l1 * l2                              # Element-wise multiplication
l1 / l2                              # Element-wise division
