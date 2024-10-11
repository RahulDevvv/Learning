Arithmetic operators
x+y x-y
Assignment operators
a = 5
a <- 5
a <<- 5
Comparison operators
== != > < >= <=
Logical operators
&& || ! & |
Miscellaneous operators
: 1:10
%in%  x  % in% y
%*%
  
  #matrix
  thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

#factor
name <- c("John","Alia","Peter","Kein","Harry")
age <- c(20,21,22,23,24)
gender <- c('M','F','M','F','M')
gender <- as.factor(gender)
print(gender)
 
#data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame

#condition
a <- as.integer(readline("Enter a: "))
b <- as.integer(readline("Enter b: "))
if(a>b){
  print("A is greater")
} else if(b>a) {
  print("B is greater")
} else{
  print("A and B are same")
}

#WAP
num <- as.integer(readline("Enter a num: "))
i <- 1
repeat{
  print(paste(num," * ",i," = ",num*i))
  i=i+1
  if(i==11){
    break
  }
}

#WAP
num <- as.integer(readline("Enter a num: "))
n = num
rev = 0
while(n>0){
  r = n%%10
  rev = rev*10+r
  n=n%/%10
}
print(paste("Reverse of number ",num," is ",rev))

#WAP
age <- c(21,22,23)
for(i in age)
{
  print(paste("Age = ",i))
}

data()
mt <- data("mtcars")

dt <- read.csv()
dt <- write.csv()


data()
mt < data("mtcars")
library("sqldf")

sqldf("select * from mtcars where mpg<15 order by mpg")


library(dplyr)
df <- data.frame(
  Name = c("John", "Peter", "Harry"),
  Age = c(25,32,22),
  Score = c(95,89,78)
)
#Pipe %>%
result <- mtcars %>% filter(mpg>20) %>%
  select(mpg,cyl,hp) %>% group_by(cyl) %>%
  summarise(mean_hp = mean(hp))
print(result)