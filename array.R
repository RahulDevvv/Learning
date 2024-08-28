# Creating a 4x2 array
a <- array(1:8, dim=c(4,2))
print(a)

a[2,2] <- 1000
print(a)
a[1:2,1:2]

#creating a 3-dimension array
a <- array(1:24, dim=c(3,4,2))
print(a)
a[1,1,1]

class(a[1,1,1])
class(a[1,1,1,drop=FALSE])