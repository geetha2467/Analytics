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





