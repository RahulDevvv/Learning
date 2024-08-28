# Vectors
a <- c(1,2,3)
class(a)
typeof(a)

b <- c(10.1)
class(b)
typeof(b)

name <- c("Ram","Syyam")
class(name)
typeof(name)

sub_name <- c("Jonn","Jane","Steve")
print(sub_name)
temp <- c(99.3,98.2,101.2)
print(temp)
flu_status <- c(TRUE,FALSE)
class(flu_status)
typeof(flu_status)
print(flu_status)
sub_name[3]
temp[2]
temp[-2]


# factor
weather <- c("Sunny", "Rainy", "Cloudy", "Sunny", "Rainy")
factor(weather)

#list
empid <-c(1,2,3)
empname <-c("Ram","Shyam","Kavi")
emplist <- list(Id=empid,Empname=empname)
print(emplist)

#dataframe
empId <- c(1, 2, 3, 4)
empName <- c("Devi", "Sandeep", "Subham", "Shiba")

empDF <- data.frame(ID = empId, Names = empName)
print(empDF)

#matrix
m <- matrix(1:9, nrow = 3, ncol = 3)
print(m)

#array
# Creating a simple 2x2x3 array
a1 <- c(5, 10, 15, 20)
a2 <- c(25, 30, 35, 40, 45, 50, 55, 60)

final <- array(c(a1, a2))
print(final)
f


