# exam_data = data.frame(
#   name = c('Anastasia','Dima','Katherine'),
#   score = c(10,20,30),
#   attempts = c(1,3,2)
# )
# print("Original data frame: ")
# print(exam_data)
# exam_data_copy = exam_data[with(exam_data,order(name)),]
# print("Sorted data frame: ")
# print(exam_data_copy)

# exam_data = data.frame(
#   name = c('Anastasia','Dima','Katherine'),
#   score = c(10,20,30),
#   attempts = c(1,NA,2)
# )
# print(exam_data)
# exam_data[is.na(exam_data)] = 3
# print(exam_data)

exam_data = data.frame(
  name = c('Anastasia','Dima',NA),
  score = c(10,20,30),
  attempts = c(1,NA,2)
)
print(exam_data)
l = length(exam_data[is.na(exam_data)])
print(paste("number of na values"))