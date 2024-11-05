data<-iris
View(iris)
str(data)
summary(data)
install.packages("caTools")
library(caTools)
set.seed(123)
split=sample.split(data$Species, SplitRatio = 0.75)
training_set=subset(data, split==TRUE)
test_set=subset(data, split==FALSE)
library(e1071)
classifier=svm(formula=Species ~.,
               data=training_set,
               type='C-classification',
               kernel='linear')
classifier
y_pred=predict(classifier, newdata = test_set[-5])
y_pred
View(mtcars)
