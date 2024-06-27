library(dplyr)
# Example: If 'titanic.csv' is in the Downloads folder on a Windows system
df <- read.csv('C:/Users/Abc/Downloads/train.csv', stringsAsFactors = FALSE)
head(df)

df2 <- read.csv('C:/Users/Abc/Downloads/test.csv', stringsAsFactors = FALSE)
head(df2)

names(df)
names(df2)

summary(df)
summary(df2)

str(df)
str(df2)

# Check for missing values
colSums(is.na(df))

# Example: Impute missing values in 'Age' with mean
df$Age[is.na(df$Age)] <- mean(df$Age, na.rm = TRUE)

# Example: Convert 'Sex' to factor
df$Sex <- factor(df$Sex)

# Example: Drop 'PassengerId', 'Ticket', and 'Cabin'
df <- df[, !(names(df) %in% c("PassengerId", "Ticket", "Cabin"))]

# Example: Histogram of 'Age'
hist(df$Age, breaks = 20, main = "Distribution of Age", xlab = "Age", ylab = "Count")

# Example: Relationship between 'Survived' and 'Age'
boxplot(Age ~ Survived, data = df, main = "Age vs Survived", xlab = "Survived", ylab = "Age")

# Example: Survival rate by 'Sex' and 'Pclass'
barplot(survival_rates, beside = TRUE, col = c("lightblue", "lightgreen", "lightcoral"),
        main = "Survival Rate by Sex and Pclass", xlab = "Sex", ylab = "Survival Rate",
        legend = rownames(survival_rates))

  


