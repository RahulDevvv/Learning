weather <- c("Sunny", "Rainy", "Cloudy", "Sunny", "Rainy")
factor(weather)
ep<-c(1,2,3)
epn<-c("Ram","Ravi","Gigi")
emplist<-list(ep,epn)
print(emplist)

a<-c(1,2,3,4)
b<-c("hello","hi")
c<-15L
d<-3+5i
e<-list(a,b,c,d)
e
e[1]
e[3]
e[[2]][2]
e[[2]][2]<-"Rahul"
e[[2]][2]  

a<-list(7,8,3.5,"hello")
b<-list("hi","x",3L,3.5)
d<-c(a,b)
d

a<-c(1,2,3)
b<-c("Avi","kavi","sky")
d<-c("cse","cse","ece")
e<-c(stringAsFactors="FALSE")
c<-data.frame(a,b,d,e)
c
c[1]
c[1,]
c[,1]
c[c(1,2),c(2,3)]

m <- matrix(c(3:14), nrow=4, byrow=TRUE)
print(m)
m <- matrix(c(3:14), nrow=4, byrow=FALSE)
print(m)
rownames<-c("row1","row2","row3","row4")
colnames<-c("col1","col2","col3")
P<-matrix(c(3:14), nrow=4, byrow=TRUE, dimnames = list(rownames, colnames))
print(P)

a1 <- c(5, 10, 15, 20)
a2 <- c(25, 30, 35, 40, 45, 50, 55, 60)
# final <- array(c(a1, a2))
# print(final)
final2 <- array(c(a1,a2),dim=c(4,2))
print(final2)

final2[2,2]=2000
final2
final2[1:2,1:2]
final2[3,]
final2[,2]


