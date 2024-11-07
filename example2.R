data=read.csv(file.choose())
str(data)
data=data[3:5]
View(data)
summary(data)
data$Purchased=factor(data$Purchased, levels = c(0, 1))
install.packages("caTools")
library(caTools)
set.seed(123)
split=sample.split(data$Purchased, SplitRatio = 0.65)
training_set=subset(data, split==TRUE)
test_set=subset(data, split==FALSE)
training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-3])

library(e1071)
svm_model <- svm(formula=Purchased ~.,
                 data=training_set,
                 type='C-classification',
                 kernel='linear')

svm_model
predictions <- predict(svm_model, newdata = test_set[-3])
predictions
