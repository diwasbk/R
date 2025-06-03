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

# user input
name = readline(prompt = "Enter your name: ")  # takes user input for name
age = readline(prompt = "Enter your age: ")  # takes user input for age
print(paste("Hello my name is ", name, "and I am ", age, "years old."))  # displays input message

paste("Diwas", "Bishwokarma", "IT", "Student", sep="_")  # joins strings using underscore
paste0("Diwas", "Bishwokarma", "Data Scientist")  # joins strings without separator

# paste0() is faster than paste()


# function
# func_name = function(arg1, arg2..){}
my_func = function(a, b){
  print(paste("This is my new function with values", a, "and", b, "and their sum is:", a + b))
}
# function call
my_func(20, 40)
my_func(30, 10)


# built-in functions
x = 5.6
print(ceiling(x))  # rounds x up to nearest integer
print(floor(x))  # rounds x down to nearest integer

y = -29
print(abs(y))  # returns absolute value of y
print(sqrt(9))  # returns square root of 9

p = c(1.5, 5.6, 8.6)
print(trunc(p))  # truncates decimal part (keeps integer part)

print(sin(x))  # returns sine of x (in radians)
print(log(x))  # returns natural logarithm of x
print(exp(x))  # returns exponential of x (e^x)

a = "DiwasBishwokarma"
substr(a, 2, 3)  # extracts substring from 2nd to 3rd character
toupper(a)  # converts to uppercase
tolower(a)  # converts to lowercase
