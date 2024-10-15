# df <- read.csv("C:/Users/91709/Downloads/archive (4)/Iris.csv")
# head(df)
# sqldf("select * from df")
# sqldf("select [SepalLengthCm], [SepalWidthCm], 
#       [Species] from df")
# sqldf("select max([SepalLengthCm]) from df")
# sqldf("select min([SepalLengthCm]) from df")
# 
# df <- sqldf(c("delete from df where species=
#               'Iris-versicolor'", "select * from df"))
# 
# sqldf("select * from df")
# 
# df <- sqldf(c("update df set species='VERSICOLOR'
#               Where species='IRIS-versicolor'",
#               "select * from df"))
# sqldf("select * from df")

str <- c("Hello", "hello", "hi", "hey")
grep('he', str)

str <- c("Hello", "hello", "hi", "hey")
grep('he', str, ignore.case = "True")
grepl('he', str, ignore.case = "True")



#regexpr() function
regexpr('he', str)
str <- c("Hello", "ello", "hi", "ahey")
regexpr('^[aeiouAEIOU]',str)

str <-c("1001", "11", "10012", "101")
regexpr('10 + 1$',str)

str <- c("abc@gmail.com","xyz@","@abc","2@a.com")
regexpr("^[a-za-z0-9+_.-]+@[a-zA-z0-9.-]+$",str)