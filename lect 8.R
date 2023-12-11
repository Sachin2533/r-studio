

library(readr)
empdata <- read_csv("Desktop/Python  R/empdata.csv")
View(empdata)
a<-11
b<- 5
print(a>b)
z=matrix(1:9,nrow = 3,ncol = 3, byrow=TRUE)
z

t(z)
class(z)
df <- data.frame(empdata)
df
sal <- table(df$dept)
sal
sal <- max(df$salary)
sal

retval <- subset(df, salary ==max(salary))
retval

retv <- subset(df, dept == "IT")
retv

info <- subset(df, salary >600 & dept == "IT")
info

res <- max(df$salary) & dept == "IT"
res

info1 <- subset(retv, max(retv$salary) & dept == "IT")
info1

high <- subset(df,salary==max(subset(df,dept=="IT")$salary))
high

write.csv(retval, "output.csv", row.names = FALSE)

data1 <-  read.csv("output.csv")
data1

x <- c(20,45,69,48)
labels <- c("America","Brazil ", " Singapore", "Uganda")


pie(x,labels)

png(file= "country.jpg")