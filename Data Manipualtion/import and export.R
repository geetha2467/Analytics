#matrix-------------------------------------
mat1 = matrix(c(1:12),nrow = 4,byrow = TRUE)
mat1
t(mat1) #transpose
mat1[,1]
mat1[1,]
mat1[,c(1,3)]
mat1[c(1,2),]

mat2 = matrix(c(12:23),nrow=4,byrow = TRUE)
mat2

mm = mat1+mat2
mm

#list----------------------------------
?list
list1 = list(A=c(1:4),color= c("red","blue","yellow","green"),names=c("denc","rishb","geeth","lak"))
unlist(list1)

list1[[2]]

lst1 = list(1:5)
lst2 = list(6:10)
lst = lst1+lst2 #error because of list 
lst

v1 = unlist(lst1)
v2= unlist(lst2)
v=v1+v2
v

#factor

fac1  = factor(c("anu","aksha","anu","aksha","anitha","mani","menika","dency"))
fac1
nlevels(fac1)

?factor

# array--------------------------------

?array

rownames= paste("R",1:3,sep ="")
colnames= paste('c',1:3,sep = "")
matrix.names = c("gee","denc",'lak',"rsb")
arr1 = array(c(1:12),dim=c(3,3,4),dimnames = list(rownames,colnames,matrix.names))
arr1

#dataframe
emp_id = c(1001:1005)
emp_name = c("anil","anju","abi","anu","gee")
emp_salary = c(1500,600,800,700,1200)
gender = c("f","m","m","m","f")

df= data.frame(emp_id,emp_name,emp_salary,gender,srtingasfactor=FALSE)
df
factor(gender)
result = data.frame(df$gender,df$emp_id)
result
summary(df)
str(df)

df[,c(2:4)]
df[c(1:3),]

emp_id = c(1006:1010)
emp_name = c("kanil","manju","tabi","manu","gladys")
emp_salary = c(8000,1600,8000,1700,2000)
gender = c("f","m","f","f","f")


df1= data.frame(emp_id,emp_name,emp_salary,gender,stringasfactor=FALSE)
df1

#add col
df1$empsec = c(01,02,01,04,05)
df1

#dataframe-----------

dat = data.frame(name= c("anu","mani","lak","buji","raji"),salary = c(100,200,500,800,900),job= c("artist","dataanalytics","fashiondesigner","CA","illustrator"),stringsAsFactors = FALSE)
dat

data.frame(dat$name,dat$salary)
data.frame(dat$salary,dat$job)

#add column

dat$maritalstatus = c("no","yes","no","no","yes")

dat

#add row

dat1 = data.frame(name= c("manu","anil","karan","pabi","ravi"),salary = c(350,250,550,450,750),job= c("teacher","developer","actor","analyst","graphicdesigner"),stringsAsFactors = FALSE)
dat1

dat1$maritalstatus = c("yes","no","yes","no","yes")
dat1

#add row

finaldat = rbind(dat,dat1)
finaldat

finaldat[,1:3]
finaldat[1:5,]
finaldat[,]
finaldat[c(1:5),c(1,3,2)]

rn= c("r1","r2","r3","r4","r5")
cn= paste("C",1:2,sep="")
to= matrix(c(2:11),nrow = 5,byrow = TRUE,dimnames = list(rn,cn))
to

#list--------------------------
lis = list(name=c(1:10),matrix= matrix(c(1:8),nrow = 4,byrow=TRUE,dimnames = list(rn=c("r1","r2","r3","r4"),cn=c("c1","c2"))),color=c("red","blue","grrrey"))
lis

#array----------------(multidimensional)

array1 = array(c(1:9),dim=c(2,2,3))
array1


dafra = data.frame(name=c("anil","pabi","kani"),std= c("1st","4th","7th"),rank=c("1","2","3"),stringsAsFactors = FALSE)
dafra

str(dafra)
summary(dafra)
dafra[,2]

dafra$favchocolate = c("cadbury","kitkat","diarymilk")
dafra

dafra1= data.frame(name=c("kanil","mpabi","jikani"),std= c("2nd","5th","8th"),rank=c("5","8","9"),stringsAsFactors = FALSE)
dafra1

dataframe123= rbind(dafra,dafra1)
dataframe123

dataframe123[1:5,]


#loop-----------------------

A= c(1:10)
for(i in A)
{
  print(i)
}

AB = c(1:150)
cnt = 3
while(cnt<20)
{
  print(cnt)
  cnt = cnt+5
}

B = c(1:80)
for(i in B)
{
  print(i)
}

BA = c(5:150)
i = 5
while(i<50)
{
  print(i)
  i=i+5
}

#data import-------------

getwd()
setwd("C:\\Users\\Admin\\Desktop\\R")

tt= read.csv(file.choose())

AST = read.csv("abc.csv")

install.packages("readr")
library(readr)

table = read.table(file.choose())
table1 = read.table("abc.txt",sep = "",header=TRUE)
install.packages("readxl")
library(readxl)
excel_sheets ("abc.xlsx")
read_excel("abc.xlsx",sheet = 1)
read_excel("abc.xlsx",sheet=2)
read_excel("abc.xlsx",shhet=3)

#ExportData---------------------------

ZX = write.csv(AST,"C:/Users/Admin/Desktop/R/myexportdata.csv")





