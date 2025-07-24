install.packages("rpart")         # For decision tree model
install.packages("rpart.plot")    # To visualize the tree
library(rpart)
library(rpart.plot)

tree_model <- rpart(Survived ~ Sex + Age + Pclass, data = data_clean, method = "class")

rpart.plot(tree_model, type = 3, extra = 104, fallen.leaves = TRUE)
d
tree_pred <- predict(tree_model, type = "class")
confusion_matrix <- table(Predicted = tree_pred, Actual = data_clean$Survived)
print(confusion_matrix)
mean(tree_pred == data_clean$Survived)  