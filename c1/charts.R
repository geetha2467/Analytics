x = c(12,20,50,40,60)
pie(x)

x = c(12,50,80,90,17)
labels = c("german","italy","india","china","austr") 

pie(x,labels,main = "asdf",col = rainbow(length(x)))

install.packages("plotrix")
library(plotrix)

x = data.frame("mtcars")
x
view(mtcars)

pie(mtcars$mpg)

boxplot(mpg~cyl,data= mtcars,notch = TRUE,varwidth = TRUE,main = "boxplot",col=c("green","red","yellow"))


boxplot(mpg ~ cyl, data = mtcars,notch = TRUE, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
?notch

H <- c(7,12,28,3,41)
M = c("sd","lk","tt","yy","as")

barplot(H,names.arg = M)
?barplot
barplot(H,names.arg = M,col ="blue",Border = 'black')

v <-  c(9,13,21,8,36,22,12,41,31,33,19)
v
hist(v)
hist(v,border = "blue")
hist(v,col = "yellow",border = "blue")

cc <- c(7,12,28,3,41)
cc
plot(cc,type = "o")

input = data.frame("mtcars")
plot(z = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)
input <- mtcars[,c('wt','mpg')]
