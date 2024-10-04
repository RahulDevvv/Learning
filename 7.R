# #def the vector
# x <- c(7, 15, 20, 44, 65, 32)
# barplot(x, xlab="Audience",
#         ylab="Count",
#         col.axis="blue"
#         , col.lab="red",
#         col="lightblue",
#         border="black",
#         names.arg=c("Jan","Feb","Mar"
#                       ,"Apr","May","Jun"),
#         main="Audience Graph")
# #dev.off()

# colors = c("green","orange","brown")
# months <- c("Mar","Apr","May","Jun","Jul")
# regions <- c("East","West","North")
# 
# values <- matrix(c(2,9,3,11,9
#                    ,4,8,7,3,12,5,2,8,10,11),
#                  nrow = 3, ncol = 5, byrow = TRUE)
# barplot(values, main="Total Revenue",
#         names.arg=months,xlab="month",
#         ylab="revenue",col=colors)
# legend("topleft",regions,cex = 1.3,fill=colors)

# v <- c(19,23,11,5,16,
#        21,32,14,19,27,
#        39)
# hist(v, xlab="Weight",ylab="Frequency",
#      col="darkmagenta", border="pink",
#      breaks=c(0,10,20,30,40))

x <- c(10,20,30,40)
mlabel = c("apple","orange",
           "blackberry","Avacardo")
pie(x, label=mlabel, init.angle = 90,col=c("orange","red",
                                          "blue","green"))
legend("bottomleft",mlabel,cex=1,
       fill=c("orange","red",
                  "blue","green"))

