#3.1
revdata<-list("Rajagiri","School","Of","Engineering","and","Technology")
reverse=rev(revdata)
reverse

#3.2
sqdata<-list(1,2,3,4,5,6,7,8,9,10)
sqdata
squared<-unlist(sqdata)
for(i in 1:10) squared[i]<-squared[i]^2
squared

#3.3
nestedlist<-list(list(0,3), list(2,6), list(4,9))
print("Original nested list:")
nestedlist
extract<-lapply(nestedlist,'[[',2)
print("Second element of the nested list:")
extract

#3.4
list1 = list(2,3,1,0)
list2 = list("A", "S", "D","T","S")
print("Original lists: ")
list1
list2
merged<-c(list1, list2)
print("Merged lists: ")
merged

#3.5
vlist<-list(3,6,9)
vlist
ulist<-unlist(vlist)
ulist

#3.6
det_emp=data.frame(Name=c("Christian","Anastasia","Paige", "Alicia","Zayn"),
                       Age=c(30,28,25,26,24),
                       Gender=c("M","F","F","F","M"),
                       Designation=c("C.E.O.","Manager","H.R.","Receptionist","Salesman"),
                       Contact=c("0000000000","1111111111","3333333333","6666666666","9999999999")
)
print("Details of the employees:")
det_emp
summary(det_emp)

#3.7
sem1_data = data.frame(
  Name = c("Nobody", "Somebody", "Anybody", "Everybody", "Somebody"),
  sCGPA = c(10, 9, 4, 8, 6),
  Attempts = c(3, 2, 1, 3, 1 ),
  Pass = c("yes", "yes", "no", "yes", "yes")
)
print("Original dataframe:")
sem1_data
print("Statistical summary and nature of the data of the said dataframe:")
summary(sem1_data)
str(sem1_data)

#3.8
sem1_data = data.frame(
  Name = c("Nobody", "Somebody", "Anybody", "Everybody", "Somebody"),
  SCGPA = c(10, 9, 4, 8, 6),
  Attempts = c(3, 2, 3, 3, 1 ),
  Pass = c("yes", "yes", "no", "yes", "yes")
)
print("Original dataframe:")
sem1_data
extractdf<-sem1_data[c(3,5),c(1,3)]
print("Extracted data:")
extractdf

#3.9
sem1_data = data.frame(
  Name = c("Nobody", "Somebody", "Anybody", "Everybody", "Somebody"),
  SCGPA = c(10, 9, 4, 8, 6),
  Attempts = c(3, 2, 3, 3, 1 ),
  Pass = c("yes", "yes", "no", "yes", "yes")
)
print("Original dataframe:")
sem1_data
sem1_data[nrow(df) + 1,] <- c(10, 20, 30)
print("Updated data frame:")
sem1_data
Newsem1_data = data.frame(
  Name = c("Anyone", "Someone", "None"),
  SCGPA = c(9.9, 7.7, 8.8),
  Attempts = c(2, 3, 1),
  Pass = c("yes", "yes", "yes")
)
sem1_data<-rbind(sem1_data,Newsem1_data)
sem1_data
#OR
df <- data.frame("c1" = c(1, 2, 3, 4),
                 "c2" = c(5, 6, 7, 8),
                 "c3" = c(9, 10, 11, 12))
df
df[nrow(df) + 1,] <- c(13, 14, 15)
df

#3.10
sem1_data = data.frame(
  Name = c("Nobody", "Somebody", "Anybody", "Everybody", "Somebody"),
  SCGPA = c(10, 9, 4, 8, 6),
  Attempts = c(3, 2, 3, 3, 1 ),
  Pass = c("yes", "yes", "no", "yes", "yes")
)
print("Original dataframe:")
sem1_data
print("dataframe after sorting 'name' and 'score' columns:")
sem1_data<-sem1_data[with(sem1_data, order(Attempts, SCGPA)), ]
sem1_data

#3.11
# Get and print current working directory.
print(getwd())

data <- read.csv("3_11 employee.csv")
print(data)

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

retval <- subset(data, dept == "IT")
print(retval)

retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)
