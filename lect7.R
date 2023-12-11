datset1 <- read_csv("Desktop/Python  R/datset1.csv")
View(datset1)

datset1

str(datset1)

table(datset1 $outcome)

data1= data.frame(datset1$surgery)
data1
data2= data.frame(datset1$surgery,datset1$age)
data2

df <- data.frame(id, name, dob, gender)
df2<- datset1[,c(2,4,6)]
print(df2)

df3 <- datset1[,c(1:3,5)]
df3

df4 <- datset1[,c('id','sex','age')]
df4
df5 <- datset1[c(1,3,4),]
df5

df6 <- datset1[c(1:400),c(2,4)]
df6

df7 <- subset(datset1, select=c("surgery","sex","age"))
df7

barplot(height=2,table(datset1$outcome))

barplot(table(datset1$outcome),main="result", ylab=" absolute frequency")
pie(table(datset1$surgery),main="Type of surgery")

summ=summary(datset1)
summ

library(readr)
empdata <- read_csv("Desktop/Python  R/empdata.csv")
View(empdata)