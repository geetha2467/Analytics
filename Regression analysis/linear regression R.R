data(mtcars)
mtcars
iris

linear = lm(iris$Petal.Length~iris$Petal.Width)
linear
summary(linear)

cor(iris$Petal.Length,iris$Petal.Width)

set.seed(123)
rowind = sample(1:nrow(iris),0.8*nrow(cars))
tr = iris[rowind,]
test = iris[-rowind,]
tes = data.frame(Petal.Width = c(1.5,1.9))
tes
lm = lm(Petal.Length~Petal.Width,data=tr)
lm
summary(lm)
predict  = predict(lm,tes)
predict






#______________________

library(ggplot2)


mtcars

ggplot(data =mtcars,aes(x=mpg,y=wt))+geom_density() 

?geom_density
#-------------------------------------

data("airquality")
airquality
str(airquality)
rmna = airquality[complete.cases(airquality),]
rmna
str(rmna)

ar = lm(Temp~Month+Wind+Solar.R,data=airquality)
ar
summary(ar)

#-------------------------

mtcars

mt = lm(hp~gear+cyl,data=mtcars)
mt
summary(mt)

set.seed(123)
ri= sample(1:nrow(mtcars),0.8*nrow(mtcars))
trai  = mtcars[ri,]           
tesi = mtcars[-ri,]



fc = lm(mpg~cyl,data=trai)
fc
summary(fc)

install.packages(usdm)
library('usdm')
pred = predict(fc,tesi)
pred
mtcars
vif(mtcars[,c(1,2)])

result<-lm(mpg~hp+gear, data=mtcars)
summary(result)

library(usdm)
vif(mtcars[,c(4,10)])
?vif

#___________

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
data = data.frame(x,y)
data
mm= lm(y~x)
mm
summary(mm)

library(ggplot2)
ggplot(data,aes(x,y))+geom_point()+geom_smooth(method='lm')

set.seed(123)
row = sample(1:nrow(data),0.9*nrow(data))
tr = data[row,]

library(dplyr)
te = data.frame(y=180)
te
frst = lm(y~x,data=tr)
frst
p = predict(frst,te)
p


#--------------------------------
  
d =women  
d

e=lm(height~weight,data=d)
e
summary(e)

set.seed(123)
r = sample(1:nrow(d),0.8*nrow(d)) 
tr = d[r,]
tes = d[-r,]

tt = lm(height~weight,data=tr)
summary(tt)

cor(d$height,d$weight)
