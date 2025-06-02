print("hello world") # prints "hello world"

5+9 # performs addition (result not printed)

s1 = 5+10 # assigns the result of 5+10 to s1
print(s1) # prints the value of s1

p=1:10 # creates a sequence from 1 to 10
plot(p) # plots the sequence

._name = "diwas" # invalid variable name starting with dot and underscore
print(.name) # error: .name is not defined

var1 = 10 # assigns 10 to var1
var2 = 20 # assigns 20 to var2
print(var1>var2) # compares var1 and var2, returns FALSE
cat(var1, var2, "\n", "DiwasBk") # prints multiple values in one line

num = 10 # assigns 10 to num
class(num) # returns the class of num
typeof(num) # returns the type of num
new = as.integer(num) # converts num to integer
class(new) # returns the class of new

c1 = 10+25i # assigns a complex number to c1
class(c1) # returns the class of c1

l1 = TRUE # assigns TRUE to l1
class(l1) # returns the class of l1

c1 = "DiwasBishwokarma" # assigns a string to c1
class(c1) # returns the class of c1

d1 = as.integer(c1) # tries to convert string to integer (results in NA)
class(d1) # returns the class of d1

# vector: collection of similar data types
v1 = c(8, 9, 6) # creates a numeric vector v1
print(v1)
