concrete=read.csv(file.choose(),stringsAsFactors = FALSE)
View(concrete)
str(concrete)
hist(concrete$strength)
normalize<-function(x) { return((x - min(x)) / (max(x) - min(x)))} 
concrete_norm<-as.data.frame(lapply(concrete,normalize))
concrete_norm
summary(concrete_norm$strength)

summary(concrete$strength)

