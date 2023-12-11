(2+3)*5+5-10

(2+3)*5+5-10/2


c(2,4,6,8,9)+10

c(2,4,6,8,9)*2

# addition of two vectors

c(1,4,7,9) + c(-2,-4,-1, -2)

c(1,4,7,9) + c(-2,-4.3,-1, -2.5)

2^4
2**3
2^-0.5

c(2,4,6,8)^ c(2,3)

# integer divison with scalar

2 %/% 2

c(3,5,7,9) %/% 3

c(3,5,7,9) %/% c(2,3)

# modulo division

c(2,3,5,7) %/% c(2,3)

max(1.3,5,6,7,9,8,3)

mean(2,4,6)
mean(c(2,4,6))


sqrt(4)

sum(c(2,3,4,5,6))

df=data.frame("ID"=110022,
              "Q1"=3.5532,
              "Q2"=4.6865,
              "Q3"=6.86574)
avg <-df %>%
  summarise(new_avg = mean(Q1,
                           Q2,
                           Q3))
avg2 <- rowMeans(df[.2:4])
5 %/% 2
avg
avg2
