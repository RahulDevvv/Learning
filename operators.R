a <- c(7.5,3,5)
b <- c(2,7,0)
# Arithmetic Operators
a+b
a-b
a*b
a/b
a%%b
a%/%b
a^b

# Relational Operators
a<b
a>b
a==b
a<=b
a>=b
a!=b

# Logical Operators
a<-0
b<-2
a&b
a|b
!a
a&&b
a||b

# Assignment Operators:
a=3
a<-5
4->a
a<<-3.4
c(1,2)->>a

# Miscellaneous operators
a:b
a%in%b
a%*%b

a=23:31
print(a)

a=c(25,27,76)
b=27
print(b%in%a)

M=matrix(c(1,2,3,4), 2, 2, TRUE)
print(M%*%t(M))

rm(d)
ls