# fruitslist <- list('apple','avacado','blueberry')
# print(fruitslist)
# print(fruitslist[3])
fruitslist[1] <- "blackcurrent","black","white","green","brown","red",
"yellow","blue","pink","skyblue","orange","turquoise"."purple","grey",
"maroon","magenta","gold","tan","navyblue","lightblue","lavender","limegreen"
# fruitslist[1] <- "blackcurrent"
# print(length(fruitslist))
# "apple" %in% fruitslist
# 
# fruitslist= append(fruitslist,"Orange")
# print(fruitslist)
# fruitslist= append(fruitslist,"Cherry",after=2)
# print(fruitslist)
# fruitslist = fruitslist[-c(2,4)]
# print(fruitslist)
# 
# print((fruitslist)[1:2])
# 
# count=1
# for(fruit in fruitslist)
# {
#   cat("\nNO. ",count,"fruit is ",fruit)
#   count=count+1
# }

empid = c(1,2,3,4)
empname = c("Debi","John","Peter","Kein")
numberofemp = 4
emplist = list(empid,empname,numberofemp)
print(emplist)

emplist = list("ID"=empid,"Names"=empname,"Total Staff"=numberofemp)
print(emplist)
print(emplist$Names)

print(emplist[[1]])
print(emplist[1])

print(emplist[[2]][2])
print(emplist[3])

emplist$ `Total Staff` <- 5
emplist[[2]][5] < "Kamal"
emplist[[1]][5] < 5
print(emplist)

#Deleting the element rrom the list
emplist$ID <- emplist$ID[-1]
print(emplist)
emplist[[2]]  = emplist[[2]][-2]
print(emplist)

#Merge the list
emplist2 <- list("Age"=c(20,22,23,24),"Salay"=c(200,300,400,500))

mergelist <- c(emplist,emplist2)
print(mergelist)

                 
               

















