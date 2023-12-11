a<-10
 a

a<-10
class(a)

 a<-c(11,10)
 class(a)

 vector1 <- c(1,2,3)
 vector1

 class(vector1)

 vector1 <- c(1,2,3,'sa')
 vector1

 class(vector1)

 vector1 <- c(1,2,3,'sa')
 vector1

 print(vector1)



 a<-11
 b<- 5
 print(a>b)

 matrix(1:9,nrow = 3,ncol = 3)

 z=matrix(1:9,nrow = 3,ncol = 3)
z


transform(z)

t(z)

 z=matrix(1:9,nrow = 3,ncol = 3, byrow=TRUE)
 z

class(TRUE)


a=10
b=50
c=30
if(a>b)
{
  if(a>c){
          print("A is greater")
         }
  else {
           print("C is greater")
      }
}
else {
       print("B is greater")
}

q<- -5:10
q
seq(1.5,2.5, by=0.1)
d <-data.frame(days,days)
d
mode(days)

paste(days)
a1="sachin"
b1="thakur"
print(a1,b1)
a=6
a=b
b=x
x=a=b=2L
class(x)
a
b
class(days)

paste(a1,b1)

days <- c("sun","mon","tue","wed","thurs", "fri","sat")
days
x <- c(20,45,69,48)
rep(x,2,each=3)
s=c("My passion is","Teaching","i love it")
s

a<-"R"
b<-"programming"
paste(a,b)
x<-2L
class(x)

v2 = c(10, 20, 30, 40)
z=matrix(1:9,nrow = 3,ncol = 3)
l=list("aa","bb","cc","dd")

f_l= list(v2,z,l)
print(f_l)

i <- 1
while (i <= 3) {
  dd=list(f_l[[i]][-2])
  i <- i + 1
  print(dd)
}


print(dd)
for (i in f_l)
{
  dd=list(f_l[[i]][-2:-3])
}

print(dd)


z =c(1,"a",TRUE)
class(z)
mode(z)

