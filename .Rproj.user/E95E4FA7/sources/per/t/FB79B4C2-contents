library(titanic)
library(dplyr)
library(ggplot2)

# Load the Titanic training dataset
data <- titanic_train


#Survival by Gender
ggplot(data, aes(x = Sex, fill = as.factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Gender", x = "Gender", fill = "Survived")

#Age Distribution by passengers
ggplot(data, aes(x = Age)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(title = "Age Distribution of Passengers")
