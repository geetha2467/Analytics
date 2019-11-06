help(hist)
data(mtcars)
View(mtcars)
attach(mtcars)
par(mfrow = c(2,3))
hist(mtcars$mpg,border = 10,col = "yellow")
barplot(mtcars$mpg)
hist(mtcars$cyl,breaks = 3, xbins = 4 )
hist(mtcars$am,breaks = 3)
hist(mtcars$am)
hist(mtcars$disp)

data("AirPassengers")
View(AirPassengers)
par(mfrow = c(2,2))
hist(AirPassengers,col = "blue",breaks = 15)
hist(AirPassengers,col="red",breaks = 20)
hist(AirPassengers,col = "grey")
hist(AirPassengers,xlim = c(200,700),ylim = c(0,50),las =1,main = "airpassenger data",xlabs = "data given", ylabs = "freq")
hist(AirPassengers, las=3)
hist(AirPassengers, breaks=5)
hist(AirPassengers, breaks=c(100, 300, 500, 700))
hist(AirPassengers, breaks=c(seq(100,700,150)))
hist(AirPassengers, 
     main="Histogram for Air Passengers", 
     xlab="Passengers", 
     border="blue", 
     col="green", 
     xlim=c(100,700), 
     las=1, 
     breaks=5, 
     prob = TRUE)
lines(density(AirPassengers),col = "red")
