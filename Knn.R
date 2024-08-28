usedcars<-read.csv(file.choose(),stringsAsFactors = FALSE)
str(usedcars)
datasets::cars
summary(usedcars)
summary(usedcars[c("price","mileage")])
range(usedcars$price)
diff(range(usedcars$price))
quantile(usedcars$price, seq(from=0, to=1, by=0.10))
table(usedcars$year)
table(usedcars$model)
table(usedcars$color)
model.table<-table(usedcars$model)
prop.table(model.table)
color_pct<-table(usedcars$color)
color_pct<-prop.table(color_pct)*100
round(color_pct,digits = 1)


wisc=read.csv(file.choose(),stringsAsFactors = FALSE)
str(wisc)  
wisc <-wisc[-1]
View(wisc)
table(wisc$diagnosis)
wisc$diagnosis<-factor(wisc$diagnosis, levels = c("B","M"),
                       labels = c("Benign", "Malignant"))
round(prop.table(table(wisc$diagnosis)) * 100,digits = 3)
summary(wisc[c("radius_mean","area_mean","smoothness_mean")])
normalize<-function(x){
  return((x-min(x))/(max(x)-min(x)))
}
wisc_n<-as.data.frame(lapply(wisc[2:31],normalize))
summary(wisc_n$area_mean)
wisc_train<-wisc_n[1:469, ]
wisc_test<-wisc_n[470:569, ]
wisc_train_lables<-wisc[1:469, 1]
wisc_test_lables<-wisc[470:569, 1]
install.packages("class")
library(class)
wisc_test_pred<-knn(train = wisc_train,test = wisc_test,
                    cl=wisc_train_lables, k=21)
install.packages("gmodels")
library(gmodels)
CrossTable(wisc_test_lables, y=wisc_test_pred,
           prop.chisq=FALSE)
