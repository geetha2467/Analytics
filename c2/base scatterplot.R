#scatter plot : 

plot(x=mtcars$mpg,y=mtcars$wt,pch=24,cex=1,xlab = "mpg",ylab = "wt",col="darkgreen")
plot(x=mtcars$mpg,y=mtcars$wt,pch=3,cex=2,xlab = "mpg",ylab = "wt",col="green")
plot(x=mtcars$mpg,y=mtcars$wt,pch=12,cex=2,xlab = "mpg",ylab = "wt",col="green")
plot(x=mtcars$mpg,y=mtcars$wt,pch=22,cex=2,xlab = "mpg",ylab = "wt",col="green") plot(x=mtcars$mpg,y=mtcars$wt,pch=22,cex=1,xlab = "mpg",ylab = "wt",col="green")
plot(x=mtcars$mpg,y=mtcars$wt,pch=24,cex=1,xlab = "mpg",ylab = "wt",col="green")
plot(x=mtcars$mpg,y=mtcars$wt,pch=24,cex=1,xlab = "mpg",ylab = "wt",col="darkgreen")

#pairs--------

pairs(~mpg+cyl+am+wt+hp,data=mtcars,col="darkred")
pairs(~iris,data=iris)

#lattice(xyplot function)-------

library(lattice)

xyplot(mtcars$mpg~mtcars$hp|mtcars$am, col = "darkblue",pch = 14,cex=.75)
xyplot(mtcars$mpg~mtcars$hp|mtcars$cyl, col = "darkblue",pch = 6,cex=1)
xyplot(mtcars$mpg~mtcars$wt|mtcars$cyl, col = "darkblue",pch = 6,cex=1)


#mtext-------------------

Ixos <- rnorm(4000,100,30)
Primadur <- Ixos+rnorm(4000 , 0 , 30)

par(mfrow=c(1,2))

par(mar=c(4,4,4,4))

hist(Ixos,  main="" , breaks=30 , col=rgb(0.3,0.5,1,0.4) , xlab="height" , ylab="nbr of plants")
plot(Ixos , Primadur,  main="" , pch=20 , cex=0.4 , col=rgb(0.3,0.5,1,0.4)  , xlab="primadur" , ylab="Ixos" )

mtext("distribution and correlation",col="darkred",font=2)



-------------------
par(mfrow=c(1,2))  
par(mar(4,2,2,2))
hist(mtcars$mpg,col = "red",main = "")  
plot(mtcars$mpg,mtcars$cyl,pch=15,cex=0.89,col="darkred")
mtext("dist and cor",outer =T,cex=2,col="darkblue")

a <- seq(1,29)+4*runif(29,0.4)
b <- seq(1,29)^2+runif(29,0.98)
screen1 = split.screen(c(2,1))

screen(screen1[1])
plot.new( a,b , pch=20 , xlab="value of a" , cex=3 )

screen(screen1[1])
hist(mtcars$mpg,col = "red",main = "")  
screen(screen1[2])
hist(mtcars$disp,col="green",main="")

my_screen_step1 <- split.screen(c(2, 1))


