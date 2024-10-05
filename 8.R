# library(ggplot2)
# data()
# data("iris")
# head(iris)
# sumarry(iris)
# ggplot(iris, aes(x=Sepal.Length,
#                   y=Petal.Length,col=Species,
#                  shape=Species))+geom_point()+geom_smooth()


data("mtcars")
head(mtcars)
library(tidyverse)
glimpse(mtcars)
ggplot(mtcars, aes(x=gear))+geom_bar()+coord_flip()
ggplot (mtcars, aes(hp, mpg))+geom_point(color="blue")+stat_summary(fun.y="mean", geom="line",
                                                                    linetype="dashed")
ggplot(mtcars, aes(x=mpg))+geom_histogram()
ggplot(mtcars, aes(x=as.factor(cyl),y=mpg))+geom_boxplot()


mtcars$cyl <- as.factor(mtcars$cyl)
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg, color=as.factor(cyl))) +
  geom_boxplot() +
  scale_color_manual(values=c("#3a0ca3", "#c9184a", "#3a5a40"))


ggplot(mtcars, aes(factor(cyl), mpg))+geom_violin(aes(fill=cyl))
