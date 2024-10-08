# gender = c("female","male","male","female")
# print(gender)
# gender <- factor(gender)
# print(gender)
# print(is.factor(gender))
# class(gender)
# levels(gender)
# levels(gender) <- c(levels(gender),"Others")

# age <- c(20,21,56)
# salary <- c(5000,6000,3999)
# gender <- c('male','female','female')
# 
# empdf <- data.frame("Employee Age"=age,"Employee Salary"=
#                       salary,gender=factor(gender))
# print(empdf)
# print(is.factor(empdf$gender))

friend.data = data.frame(friend_id = c(1:5), friend_name = 
                           c("John","Peter","Kien","David","Harry"),
                         stringsAsFactors = FALSE)
print(friend.data)
print(str(friend.data))
print(summary(friend.data))
print(friend.data$friend_id)
print(friend.data[,2])

friend.data$location = c("America","Korea","UK","Dubai","India")

dim(friend.data)
#Add the new row using rbind function
newf = c(6,"Ferdous","Spain")
friend.data <- rbind(friend.data,newf)
print(friend.data)

#Add the column using cbind function
invited <- c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)
friend.data <- cbind(friend.data,invited)
print(friend.data)

#subset data frame
data <- subset(friend.data,friend.data$friend_id!=3)
print(data)

data <- subset(friend.data,friend.data$invited==TRUE)
print(data)

data <- select.list(friend.data,-friend.data$location)
print(data)














