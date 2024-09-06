#Select, Insert, Update and Delete records using sqldf
library(sqldf)
data(iris)
head(iris)
df <- sqldf("select * from iris")
df <- sqldf("select max([Sepal.Length]) as MaxSepalLength, Species from iris")
View(df)
df <- sqldf("select Sum([Sepal.width]) as SumSepalwidth, Species from iris groupby")
View(df)
df <- sqldf("select [Sepal.width] as Sepalwidth, Species from iris orderby")
df
df <- sqldf("select avg([Sepal.width]) as MeanSepalwidth, Species from iris group by Species")
df

#insert
d<-data.frame(a=c('a','b','c'),b=c(1,3,1))
d
d<-sqldf(c("insert into d values('x',999)","select * from d"))
d<-sqldf(c("insert into d values('rahul',54)","select * from d"))
View(d)

#update
d<-data.frame(a=c('a','b','c'),b=c(1,3,1))
d
d<-sqldf(c("update d set a='roll',b=54 where a='a' ","select * from d"))
View(d)

#delete

d<-data.frame(a=c('a','b','c'),b=c(1,3,1))
d
d<-sqldf(c("delete from d where a='a' ","select * from d"))
View(d)
