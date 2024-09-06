install.packages("sqldf")
library(sqldf)
mtcars

sqldf("select * from mtcars where gear=4")
sqldf("select mpg, cyl from mtcars where gear<5")
sqldf("select mpg, cyl, gear from mtcars where gear<5")
a <- sqldf("select mpg, cyl, gear from mtcars where gear<5")
is.data.frame(a)

iris
sqldf("select [Sepal.Length] from iris")
sqldf("select [Species] from iris")
sqldf("select * from iris where Species='setosa'")
