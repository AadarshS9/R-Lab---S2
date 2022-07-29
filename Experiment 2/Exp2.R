#2.1
dim1<-c("Stock Price","Revenue","Employees")
dim2<-c("2018","2019")
dim3<-c("Apple","Microsoft")
table<-c(155, 261, 132000,423.4, 321, 137000,105, 240, 118000,157.64, 260, 139000)
threed=array(c(d),dim=c(3,2,2),dimnames=list(dim1,dim2,dim3))
threed

#2.2
diff_price<-threed[1,2,1]-threed[1,1,1]
diff_price
percent_price<-((diff_price/threed[1,1,1])*100)
round(percent_price)

#2.3
row.names=c("R1 ","R2", "R3","R4","R5")
col.names=c("C1","C2","C3")
array<-array(seq(from=50,length.out=15,by=2),dim=c(5,3,1),dimnames=list(row.names,col.names))
array


#2.4
matrix1<-matrix(1:20,nrow=5,ncol=4)
print("Matrix 1: 5x4 ")
matrix1

mr1<-c("Row1","Row2","Row3")
mc1<-c("Col1","Col2","Col3")
matrix2<-matrix(1:9,nrow=3,ncol=3,byrow=TRUE,dimnames=list(mr1,mc1))
print("Matrix 2: 3x3 with labels and filled by rows ")
matrix2

mr2<-c("Row1","Row2")
mc2<-c("Col1","Col2")
matrix3<-matrix(1:4,nrow=2,ncol=2,byrow=FALSE,dimnames=list(mr2,mc2))
print("Matrix 3: 2x2 with labels and filled by columns ")
matrix3

#2.5
transpose1<-t(matrix1)
print("Matrix 1 Transpose")
transpose1

transpose2<-t(matrix2)
print("Matrix 2 Transpose")
transpose2

transpose3<-t(matrix3)
print("Matrix 3 Transpose")
transpose3

#2.6
m1<-matrix(1:4,nrow=2,ncol=2,byrow=TRUE)
m1
m2<-matrix(5:8,nrow=2,ncol=2,byrow=TRUE)
m2
multiply<-m1%*%m2
multiply

