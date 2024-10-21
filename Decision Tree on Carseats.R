install.packages("ISLR")
library("ISLR")  # For the Carseats dataset
library("tree")  # For decision tree
library("rpart.plot")  # For better tree plotting
View(Carseats)
# Load and inspect the Carseats dataset
data(Carseats)
str(Carseats)

# Preprocessing: Create a binary outcome variable 'New_Sales'
New_Sales <- ifelse(Carseats$Sales >= 8, "Yes", "No")
Carseats <- data.frame(Carseats, New_Sales = as.factor(New_Sales))

# Drop the original 'Sales' variable (since we're predicting 'New_Sales')
Carseats <- Carseats[, -which(names(Carseats) == "Sales")]

# Split the data into training and testing sets
set.seed(2)
train <- sample(1:nrow(Carseats), nrow(Carseats) / 2)
trainingdata <- Carseats[train, ]
testingdata <- Carseats[-train, ]
testingNew_Sales <- Carseats$New_Sales[-train]
# above line extracts the New_Sales column from the testing set,
#which will be used later
#to compare against the model’s predictions for evaluation.

# Build the decision tree model
tree_model <- tree(New_Sales ~ ., data = trainingdata, mindev = 0.001)
# in above line, mindev controls
#when the algorithm should stop splitting further

# Plot the tree
plot(tree_model)
text(tree_model, pretty = 0)
# This function adds labels to the plotted tree, showing
#decisions made at each node & outcomes at the leaves.
#pretty = 0 specifies that variable names should appear
#exactly as they are, without abbreviating or truncating them.



# Test the model on the testing data
tree_pred <- predict(tree_model, testingdata, type = "class")

# Pruning the tree to avoid overfitting
set.seed(2)
cv_tree <- cv.tree(tree_model, FUN = prune.misclass) 
# cv.tree performs cross-validation on the decision tree
#to help identify the optimal size of the tree 
# Prunes the tree based on misclassification error(for classification tasks).
#It reduce overfitting by pruning unnecessary branches
#that don't contribute to better prediction accuracy.



plot(cv_tree$size, cv_tree$dev, type = "b", xlab = "Tree Size", ylab = "Deviance")
#cv_tree$size indicates the number of terminal nodes at different pruning stages;
#cv_tree$dev shows the deviance (error) for each tree size;
#plot() visualizes tree size vs. deviance, with type = "b" for points and lines,
#and labels x-axis as "Tree Size" and y-axis as "Deviance".




pruned_tree <- prune.misclass(tree_model, best = 9) #reduces the tree to 9 nodes for better performance. 
plot(pruned_tree) #displays the pruned tree
text(pruned_tree, pretty = 0) #adds labels to show the decisions and predictions at each node.


tree_pred_pruned <- predict(pruned_tree, testingdata, type = "class") 
tree_pred_pruned
