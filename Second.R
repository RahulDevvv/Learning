# for(i in 1:7)
# {
#   print(i^3)
# }
# 
# head(iris)
# tail(iris)
# nchar(iris)
# ?iris
# for(n in names(iris))
# {
#   print(paste(n,nchar(n)))
# }

# data <- data.frame(
#   Name = c("John", "Jane", "Bob"),
#   Age = c(25, 30, 22),
#   Score = c(95, 89, 75)
# )
# print(data)

# stu.name = c("John","Ken","Harry","Peter","Mike")
# stu.marks = c(50,60,40,30,80)
# pass.status = c(TRUE,TRUE,FALSE,FALSE,TRUE)
# studata = data.frame(stu.name,stu.marks,pass.status)
# for(n in names(studata))
# {
#   print(paste(n,nchar(n)))
# }
# print(studata)

# set.seed(3)
# while (TRUE)
# {
#   x <- rnorm(1)
#   print(x)
#   if(x>1)
#   {
#     break
#   }
# }

# num = as.numeric(readline("Enter number: "))
# n=num #copy original number to n
# nn=0
# while(n>0)
# {
#   r = n%%10
#   nn = nn+(r^3)
#   n=n%/%10
# }
# print(paste("New number: ",nn))
# if(num==nn)
# {
#   print("Armstrong number")
# }else
# {
#   print("Not an Armstrong number")
# }

# loop through rows from 1 to 4
# num = as.numeric(readline("Enter number: "))
# for (i in 1:num) {
#   for (j in 1:i) {
#     cat(j," ")
#   }
#   cat("\n")
# }


num = as.numeric(readline("Enter number: "))
for (i in 1:num) {
  for (k in i:num) {
    cat(" ")
  }
  for(j in 1:i){
    cat("\n")
  }
  cat("\n")
}

