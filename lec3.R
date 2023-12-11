vector1 <- c(1,2,3)
vector1
class(vector1)

vector2 <- c("a","b","c")
class(vector2)

d <-data.frame(vector1,vector2)
d

d[1,]
d[,2]

b <- as.factor(vector1)
b

class(b)

c <-as.list(vector1)
c
class(c)


install.packages("tidyverse")


library(tidyverse)
cap=data.frame(st_name=c("sam","Ram","Vam","Lam","Tam"),
               st_roll=c(101,102,103,104,105),
               marks=c(98,78,85,94,99),
               gender=c("M","M","F","F","M"),
               city=c("JPR","ASR","BGR","RZK","MTB"),
               age=c(20,21,19,23,24))

cd=cap%>%
  select(st_name, gender,marks)%>%
  rename(tot_marks=marks)
view(cd)
cap
View(cd)
# install.packages("tidyverse")
