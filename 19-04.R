# data <- read.csv("C:/Users/91709/OneDrive/Documents/empdata.csv")
# print(data)
# 
# print(ncol(data))
# print(nrow(data))
# 
# print(min(data$salary))
# print(max(data$salary))
# 
# result <- data[data$salary>2500, c("id","name")]
# print(result)

# setwd("C:/Users/91709/OneDrive/Documents")
# getwd()
# id <- c(101,102,103)
# name <- c('peter','sham','john')
# marks <- c(30,40,50)
# 
# studf <- data.frame(id,name,marks)
# 
# write.csv(studf,"C:/Users/91709/OneDrive/Documents/student.csv")
# #open the directory and student.csv would be there

#working with excel files

# install.packages("readxl")
library(readxl)
data1 <- read_excel(file.choose())
print(data1)