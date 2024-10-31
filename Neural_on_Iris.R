
install.packages("neuralnet")  
data(iris)

iris$Species <- as.numeric(factor(iris$Species))
scaled_iris <- as.data.frame(scale(iris[, 1:4]))

scaled_iris$Species <- iris$Species

set.seed(123)

train_iris <- sample(1:nrow(scaled_iris), 100)
train_data <- scaled_iris[train_iris, ]
test_data <- scaled_iris[-train_iris, ]

neural_model <- neuralnet(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,
                          data = train_data,
                          hidden = c(5, 3), 
                          linear.output = FALSE)


plot(neural_model)

# Compute predictions on the test set
#predictions <- compute(neural_model, test_data[, 1:4])$net.result

# Convert predicted probabilities to class labels
#predicted_classes <- apply(predictions, 1, which.max)

# Compare predicted species with actual species
#actual_classes <- test_data$Species
#confusion_matrix <- table(Predicted = predicted_classes, Actual = actual_classes)

# Print the confusion matrix
#print(confusion_matrix)

# Calculate accuracy
#accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
#cat("Accuracy: ", accuracy * 100, "%\n")
