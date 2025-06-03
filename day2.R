# if-else Statement in R

num1 = 20
if(is.integer(num1))  # checks if num1 is of integer type (Note: 20 by default is numeric, not integer in R)
{
  print("Integer")  # prints if condition is true
}else
{
  print("Not integer")  # prints if condition is false
}

vect = c("My", "name", "is", "Diwas")  # creates a character vector
if("name" %in% vect){  # checks if "name" is present in vect
  print("Available")  # prints if "name" is found in vect
}else{
  print("Not available")  # prints if "name" is not found
}

marks = 75
if(marks>=90){  # grade A+ if marks is 90 or above
  print("A+")
}else if(marks>=80){  # grade A if marks is between 80 and 89
  print("A")
}else if(marks>=70){  # grade B+ if marks is between 70 and 79
  print("B+")
}else if(marks>=60){  # grade B if marks is between 60 and 69
  print("B")
}else{
  print("Fail")  # if marks is below 60
}
