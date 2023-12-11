

temp <- c(5,10,15,20,25)

barplot(temp, col=c("aquamarine","black","red"),
        main="With 3 colors")

# color palette


temp <- c(5,10,15,20,25,30,35)

barplot(temp, col=rainbow(7),
        main="With rainbow colors")


library(ggplot2)

install.packages("dplyr")
library(dplyr)

data()

View(mtcars)
summary(mtcars)

ggplot(data=mtcars) + labs(title="MTCars data plot")

ggplot(data=mtcars) + aes(x=hp,y=mpg,col=disp)+
  labs(title="MT cars")

ggplot(data=mtcars, aes(x=hp,y=mpg,col=disp))+
  geom_point()+
  labs(title="MT cars",
       x="horsepower",
       y="miles per gallon")

ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Horsepower",
       x = "Horsepower",
       y = "Count")
# Facet Layer
# Separate rows according to transmission type
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()
p + facet_grid(am ~ .) +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")
# Separate columns according to cylinders
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()
p + facet_grid(. ~ cyl) +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

ggplot(data=mtcars,aes(x=hp, y=mpg))+
  geom_point()+
  facet_grid(. ~ cyl)+
  theme(plot.background = element_rect(fill="aquamarine",color="black"))+
  labs(title="Miles per gallon vs horsepower")


