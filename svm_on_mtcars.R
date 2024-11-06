data<-mtcars
View(mtcars)
str(data)
summary(data)
install.packages("caTools")
library(caTools)
set.seed(123)
split=sample.split(data$mpg, SplitRatio = 0.75)
training_set=subset(data, split==TRUE)
test_set=subset(data, split==FALSE)
library(e1071)
svm_model <- svm(formula=as.factor(mpg) ~.,
                 data=training_set,
                 type='C-classification',
                 kernel='linear')

svm_model
predictions <- predict(svm_model, newdata = test_set)
