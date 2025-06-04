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

# R Vector Functions
# rep(): Repetition function to repeat elements in a vector
rep(c(2, 3, 4), times = 3)           # Repeat the whole vector 3 times
rep(c(1, 2, 3), each = 2)            # Repeat each element 2 times
rep(c(0, 8), times = c(3, 4))        # 0 repeated 3 times, 8 repeated 4 times
rep(1:4, length.out = 9)             # Repeat sequence until length reaches 9

# seq(): Sequence generation
seq(from = 3.5, to = 1.5, by = -0.5)               # Sequence decreasing by 0.5
seq(from = -2.7, to = 1.5, length.out = 9)         # Generate 9 equally spaced values

# any() and all(): Logical checks
x = 5:10                                # Sequence from 5 to 10
any(x > 5)                              # Checks if any element is greater than 5
all(x > 2)                              # Checks if all elements are greater than 2


# 2. Lists
# A list can contain elements of different types and lengths.
v1 = c(1, 2, 3, 4, 5)                # Numeric vector
v2 = c("Apple", "MAngo", "Banana", "Orange", "Gauva")  # Character vector
v3 = c(TRUE, FALSE, TRUE, TRUE, FALSE)                  # Logical vector
list1 = c(v1, v2, v3)                # This creates a vector by combining elements, not a list
print(list1)                         # Printing the result

# Note: The number of elements should be the same in all vectors i.e., v1, v2, v3

# Naming a list
lst = list(c("Monitor", "Keyboard", "CPU"), c(500, 100, 800), c("OLED", "Gaming", "Processing Unit"))  # Creating a list
names(lst) = c("Device", "Price", "Types")   # Naming list elements
lst                                   # Printing the list
lst["Price"]                          # Accessing the "Price" component

# unlist(): Converts the list to a vector
ls = list(5:10)                       # List with a sequence from 5 to 10
vc = unlist(ls)                      # Converting list to vector
class(vc)                            # Checking class
typeof(vc)                           # Checking type
