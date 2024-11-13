install.packages("ClusterR")
install.packages("cluster")
library(ClusterR)
library(cluster)
iris_1<-iris[, -5]
View(iris_1)
set.seed(240)
kmeans.re<-kmeans(iris_1,centers = 3, nstart = 20)
kmeans.re

kmeans.re$cluster
cm<-table(iris$Species, kmeans.re$cluster)
cm

plot(iris_1[c("Sepal.Length", "Sepal.Width")],
     col=kmeans.re$cluster,
     main="K-means with 3 clusters")

kmeans.re$cluster
kmeans.re$centers[, c("Sepal.Length", "Sepal.Width")]

points(kmeans.re$centers[, c("Sepal.Length", "Sepal.Width")],
       col=1:3, pch=7, cex=3)

y_kmeans<-kmeans.re$cluster
clusplot(iris_1[, c("Sepal.Length", "Sepal.Width")],
         y_kmeans,
         lines = 1,
         color = TRUE,
         shade = TRUE,
         labels = 1,
         plotchar = TRUE,
         span = TRUE,
         main = paste("cluster iris"),
         xlab = 'Sepal.Length',
         ylab = 'Sepal.Width')
