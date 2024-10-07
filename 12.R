# dtm <- as.matrix(mtcars)
# heatmap(dtm)


# set.seed(110)
# dt <- matrix(rnorm(100,0,5),nrow=10,
#              ncol=10)
# print(dt)
# colnames(dt)<- paste0("col",1:10)
# rownames(dt)<- paste0("row",1:10)
# heatmap(dt)


library(ggplot2)
dt <- data.frame(category=c('A','B','C'),
                 count=c(10,20,30))
dt$fraction = dt$count/sum(dt$count)
dt$ymax = cumsum(dt$fraction)
dt$ymin = c(0,head(dt$ymax, n=-1))

ggplot(dt,aes(ymax=ymax, ymin=ymin,
                xmax=4, xmin=3,
                fill=category)) + geom_rect() + coord_polar(theta="y")+xlim(c(2,4))
