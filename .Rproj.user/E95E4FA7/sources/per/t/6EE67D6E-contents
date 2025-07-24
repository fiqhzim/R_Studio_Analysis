library(titanic)
library(dplyr)
library(ggplot2)

# Load the Titanic training dataset
data <- titanic_train
head(data)  # View first 6 rows

str(data)          # View structure of the dataset
summary(data)      # Quick statistics
colnames(data)     # Column names

#Total Passengers
nrow(data)

#How many male/female?
table(data$Sex)

#Mean Age
mean(data$Age, na.rm = TRUE)

#Survival Count
table(data$Survived)

#total Survived rate by gender
data %>%
  group_by(Sex) %>%
  summarise(Survived_Rate = mean(Survived, na.rm = TRUE))


