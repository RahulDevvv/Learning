cancer=read.csv(file.choose(),stringsAsFactors = FALSE)
str(cancer)  
cancer <-cancer[-1]
View(cancer)
table(cancer$diagnosis)
cancer$diagnosis<-factor(cancer$diagnosis, levels = c("B","M"),
                       labels = c("Benign", "Malignant"))
round(prop.table(table(cancer$diagnosis)) * 100,digits = 3)
summary(cancer[c("radius","area","smoothness")])
normalize<-function(x){
  return((x-min(x))/(max(x)-min(x)))
}
cancer_n<-as.data.frame(lapply(cancer[2:9],normalize))
summary(cancer_n$area)
cancer_train<-cancer_n[1:69, ]
cancer_test<-cancer_n[70:99, ]
cancer_train_lables<-cancer[1:69, 1]
cancer_test_lables<-cancer[70:99, 1]
library(class)
cancer_test_pred<-knn(train = cancer_train,test = cancer_test,
                    cl=cancer_train_lables, k=21)
library(gmodels)
CrossTable(cancer_test_lables, y=cancer_test_pred,
           prop.chisq=FALSE)
