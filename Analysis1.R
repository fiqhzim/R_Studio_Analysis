library(titanic)
data <- titanic_train

#is there any missing data?
any(is.na(data))

#Total Missing data?
sum(is.na(data))

# Count missing values by column
colSums(is.na(data))

#only show rows with missing values
data[!complete.cases(data), ]

#filter missing data
library(dplyr)
data_clean <- titanic_train %>%
  filter(!is.na(Age))

#Check again if there is any missing data on the new dataset
any(is.na(data_clean))

#Group by age range and class
data_clean <- data_clean %>%
  mutate(AgeGroup = cut(
    Age,
    breaks = c(0, 12, 18, 30, 50, 80),
    labels = c("Child", "Teen", "Young Adult", "Adult", "Senior")
  ))

survival_summary <- data_clean %>%
  group_by(Pclass, AgeGroup) %>%
  summarise(SurvivalRate = mean(Survived), Count = n())

print(survival_summary)

#Visualize
library(ggplot2)

ggplot(survival_summary, aes(x = AgeGroup, y = SurvivalRate, fill = factor(Pclass))) +
  geom_col(position = "dodge") +
  labs(
    title = "Survival Rate by Age Group and Passenger Class",
    x = "Age Group",
    y = "Survival Rate",
    fill = "Passenger Class"
  ) +
  theme_minimal()




