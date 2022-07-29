#1.1
a<-c()
a
a<-append(a,c(1:9))
a

#1.2
b<-c(1,2,3)
c<-c("Red","Green","Yellow")
d<-c(TRUE,FALSE,TRUE)
b
class(b)
c
typeof(c)
d
class(d)

#1.3
r<-c(1:3)
s<-c(4:6)
t<-c(7:9)
rownames=c("Row1","Row2","Row3")
colnames=c("Col1","Col2","Col3")
m<-matrix(c(r,s,t),nrow=3,ncol=3,byrow=FALSE,dimnames=list(rownames,colnames))
m

#1.4
v<-c(1,3,6,9)
max(v)
min(v)

#1.8
x<-c(1,3,6,9)
sum(x)
mean(x)
prod(x)

#1.5
Fibonacci <-c(1:10)
Fibonacci[1]<-1
Fibonacci[2]<-1
for(i in 3:10) Fibonacci[i]<-Fibonacci[i-2]+Fibonacci[i-1]
print("First 10 Fibonacci Numbers:")
Fibonacci

#1.6
{
  n = as.integer(readline(prompt = "Enter a number :"))
  for (j in 2:n) {
    f = 1
    i = 2
    n = j
    while (i <= n / 2) {
      if (n %% i == 0) {
        f = 0
        break
      }
      i = i + 1
    }
    if (f == 1) {
      print(n)
    }
  }
}

#1.7
factors<-function(x){
  print(paste("The factors of",x,"are"))
  for(i in 1:x){
    if((x%%i)==0){
      print(i)
    }
  }
}

#1.8
x<-c(1,3,6,9)
sum(x)
mean(x)
prod(x)

#1.9
date<-as.Date("2002/10/23")
n=273
olddate<-date-n
newdate<-date+n
print(paste("Original date is: ",date))
print(paste("Subtracted date is: ",olddate))
print(paste("Added date is: ",newdate))

#1.10
date1<-as.Date("2004/12/21")
date2<-as.Date("2002/10/23")
print(paste("Date 1 is: ",date1))
print(paste("Date 2 is: ",date2))
difftime(date1,date2,units="days")
