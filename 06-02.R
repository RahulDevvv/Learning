# name <- as.character(readline("Enter name: "))
# age <- as.integer(readline("Enter age: "))
# print (name)
# print(paste("Name",name," and age"))
# print(R.version.string)

# cat("Seq of no. from 20 to 50:",20:50)
# cat("Seq of no. from 20 to 50:",seq(20,50,2))


# v = sample(-50:50,10,replace=TRUE)
# cat("Random no. ",v)

# num <- as.integer(readline("Enter number: "))
# flag = 0
# for(i in seq(2,num/2))
# {
#   if(num%%i==0)
#   {
#     flag=1
#     break
#   }
# }
# if(flag==0)
# {
#   cat(num,"is a prime no.")
# }else
# {
#   cat(num,"not a prime no.")
# }


# music_type <- factor(c("Jazz","Rock","classic",
#                        "classic","Pop","Rock","Jazz"))
# print(music_type)
# print(levels(music_type))
# 
# music_type <- factor(c("Jazz","Rock","classic",
#                        "classic","Pop","Rock","Jazz"),
#                      levels =c("classic","Jaz","Pop","Rock","Other"))
# length(music_type)
# music_type[3] <- "PunjabiMusic"
# print(music_type)

#create a vector as input
data <- c("East","West","East","North","North","East",
          "West","West","West","East","North")
print(data)
print(is.factor(data))

#Apply the factor function
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))






