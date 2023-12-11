# create an excel sheet with 15 rows 3 cols 
#name test_score(20) no. of attempt (0-4)
# Q1.
library(readxl)
cadata <- read_excel("Desktop/Python  R/cadata.xlsx")
View(cadata)

data <- data.frame(cadata)
head(data)
# Q2.
sorted_data <- (data[order(data$Name), ])
print(sorted_data)
sorted_data <- (data[order(data$Test_Score), ])
print(sorted_data)
sorted_data <- (data[order(data$No..of.Attempts), ])
print(sorted_data)

# Q3 

q_df <- data.frame(Qualified = ifelse(df$Test.Score > 10, "Yes", "No")
)
print(q_df)
# Q 4

data$qualify <- ifelse(data$Test_Score >= 10, "Yes", "No")
data


# Q 5.
summary(data)
str(data)
max_score= max(data$Test_Score)
max_score

avg_score=mean(data$Test_Score)
avg_score
# Q6.
install.packages("ggplot")
library(ggplot2)
#a) No of attempts 

barplot(data$No..of.Attempts,
        main="No of Attempts",
        xlab="Attempt Values",
        ylab="Frequency",
        col="grey")

#b) status of qualiying students
ggplot(data=q_df,aes(x=Qualified,color=c("red"))) + geom_bar(width=0.4) + theme_classic()

ggplot(data, aes(x = No..of.Attempts)) +
  geom_bar(fill = "red") +
  labs(title = "Number of attempts", x = "attempts", y = "Count")