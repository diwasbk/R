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

# Switch Case Statement in R
# switch syntax: switch(expression, case1, case2....)
y = 2
x = switch(y, "1"="Diwas", "2"="Ram", "3"="Shyam")  # returns "Ram" since y = 2
print(x)

# for loop in R
for(y in 1:20){  # loops from 1 to 20
  print(paste(y, ". R Programming"))  # prints loop index with text
}

v1 = c("Diwas", "Ram", "Shyam", "Hari", "Sita", "Gita")
for(i in v1){  # iterates through each element in vector v1
  print(i)  # prints each name
}

# while loop
v = c("Diwass", "Rams", "Shyams", "Haris", "Sitas", "Gitas")
x = 1
while(x < 3){  # loop runs while x is less than 3
  print(v)  # prints all elements of vector v
  x = x + 1  # increments x
}

# repeat loop
x = 1:30
repeat{  # infinite loop; will repeat forever unless a break is added
  print(x)  # prints vector x
  # Missing break condition (e.g., use if(...) break to stop)
}

# next and break statement
p = 1:10
for(q in p){
  if(q == 5){
    next  # skips the iteration when q is 5
  }
  print(q)  # prints q except when q is 5
}
