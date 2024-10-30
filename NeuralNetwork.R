install.packages("MASS")
library("MASS")
View(Boston)
DataFrame<-Boston
help(Boston)
str(DataFrame)
hist(DataFrame$medv)
hist(DataFrame$zn)
dim(DataFrame)

apply(DataFrame,2,range)
maxValue=apply(DataFrame,2,max)
maxValue

minValue=apply(DataFrame,2,min)
minValue

DataFrame=as.data.frame(scale(DataFrame,center = minValue,
                              scale = maxValue-minValue))


# split<-sample.split(DataFrame$nrow, SplitRatio = 0.65)
# split
# training_set<-subset(DataFrame, split == TRUE)
# training_set
# test_set<-subset(DataFrame, split ==FALSE)
# test_set


x=sample(1:nrow(DataFrame),400)
x
train=DataFrame[x,]
test=DataFrame[-x,]
train
test
help("Boston")
install.packages("neuralnet")
library("neuralnet")
neuralmodel=neuralnet(medv ~.,hidden = c(4,2),
                      data = train)
plot(neuralmodel)
model_results=compute(neuralmodel,test[1:13])
str(model_results)
predicted<-model_results$net.result
cor(predicted, test$medv)

