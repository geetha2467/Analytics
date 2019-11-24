#pie chart-------------------------------
x = c(12,20,50,40,60)
pie(x)
x = c(12,50,80,90,17)
labels = c("german","italy","india","china","austr") 
pie(x,labels,main = "asdf",col = rainbow(length(x)))
install.packages("plotrix")
library(plotrix)


#boxplot-----------------------------
x = data.frame("mtcars")
x
view(mtcars)

pie(mtcars$mpg)

boxplot(mpg~cyl,data= mtcars,notch = TRUE,varwidth = TRUE,main = "boxplot",col=c("green","red","yellow"))

boxplot(mpg ~ cyl, data = mtcars,notch = TRUE, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
?notch

#bar plot-----------------------------
H <- c(7,12,28,3,41)
M = c("sd","lk","tt","yy","as")

barplot(H,names.arg = M)
?barplot
barplot(H,names.arg = M,col ="blue",Border = 'black')


#hist---------------------------------
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
v
hist(v)
hist(v,border = "blue")
hist(v,col = "yellow",border = "blue")

#scatter plot------------------------
cc <- c(7,12,28,3,41)
cc
plot(cc,type = "o")
input = data.frame("mtcars")
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
plot(x= input$wt, y = input$mpg, xlim = c(1,6),ylim = c(15,30),xlab ="wt",ylabs = "mpg",col="blue")
warnings()

#scatter plot when there is more than one variable use pairs 

pairs(~mpg+cyl+hp+wt, data = mtcars, main =  "scatter plot data")
plot(mtcars)

data.frame(mtcars)
mpg = mtcars$wt
mpg
wt = mtcars$mpg
wt
plot(mpg,wt,main = "scatter plot of mtcaars",xlabs = "mpg",ylabs = "wt",pch = 1)
abline(lm(wt~mpg),data = mtcars,col = "blue")

plot(mpg,wt,main = "scatter plot of mtcaars",xlabs = "mpg",ylabs = "wt",pch = 1,frame=FALSE)
lines(lowess(mpg, wt), col = "blue")

install.packages("car")
library("CARS")
library('car')
scatterplot(wt~mpg,data= mtcars)
scatterplot(wt ~ mpg,data = mtcars,smoother = TRUE, grid = TRUE, frame = TRUE)
scatterplot(wt ~ mpg | cyl, data = mtcars,smoother = FALSE, grid = FALSE, frame = FALSE)
mpg = mtcars$wt
mpg
wt = mtcars$mpg
wt
cyl = mtcars$cyl
cyl
install.packages('scatterplot3d')
library(scatterplot3d)
scatterplot3d(mpg,wt,cyl,pch = 1)
scatterplot3d(mpg,cyl,wt,pch = 5,grid = TRUE,frame= TRUE,col = c("green","blue","grey"))
