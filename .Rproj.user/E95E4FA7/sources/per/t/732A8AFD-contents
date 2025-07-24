# Remove rows with missing values in relevant columns
data_clean <- data %>%
  select(Survived, Sex, Age, Pclass) %>%
  filter(complete.cases(.))

# Convert categorical variables to factors
data_clean$Survived <- as.factor(data_clean$Survived)
data_clean$Sex <- as.factor(data_clean$Sex)
data_clean$Pclass <- as.factor(data_clean$Pclass)

# Fit the model
model <- glm(Survived ~ Sex + Age + Pclass, data = data_clean, family = "binomial")

# View model summary
summary(model)


# Predict probabilities
predictions <- predict(model, type = "response")

# Convert to binary predictions (0 or 1) using 0.5 threshold
predicted_class <- ifelse(predictions > 0.5, 1, 0)

# Convert to factor to match actual values
predicted_class <- as.factor(predicted_class)

# Confusion matrix
table(Predicted = predicted_class, Actual = data_clean$Survived)

# Accuracy
mean(predicted_class == data_clean$Survived)
