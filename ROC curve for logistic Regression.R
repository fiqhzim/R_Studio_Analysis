#how accurate is logistic regression model?
#use ROC curve

install.packages("pROC")    
library(pROC)


# Predict probabilities, not class labels
predicted_probs <- predict(model, type = "response")

roc_curve <- roc(data_clean$Survived, predicted_probs)
plot(roc_curve, col = "blue", main = "ROC Curve for Titanic Survival Model")

auc(roc_curve)