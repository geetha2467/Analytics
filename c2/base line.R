
#line base graph---------------------

v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

plot(v,type = "l")
lines(t,type="o")

data("AirPassengers")
view(AirPassengers)
plot(AirPassengers,type = "l",col = "darkred",main = "line graph", xlab = "year", ylab = "Data", xlim = c(1948,1960))     
lines(AirPassengers-100, col = "green") 
par(mfrow = c(2,3))
plot(AirPassengers,type = "s",col = "blue",labels =T)
plot(AirPassengers,type = "S",col = "blue",labels =T)     
plot(AirPassengers,type = "h",col = "blue",labels =T)
plot(AirPassengers,type = "b",col = "blue",labels =T)
plot(AirPassengers,type = "c",col = "blue",labels =T)
plot(AirPassengers,type= "o")

#using for loop in line graph----------------------------

x =  c(1:5)
y = x
par(pch = 15,col = "blue")
par(mfrow = c(2,3))
opt = c("s","l","o","p","S","h")

for (i in 1:length(opt))
{
  heading = paste("type" ,  opt[i])
  plot(x,y,type= opt[i], main = heading)
}
a=c(1:5)
b=c(5,3,4,5,5)
c=c(4,5,4,3,1)

#legend==============

plot(b~a, col = "blue",lty = 6,lwd = 2,pch = 10, type = "b",main = "line chart")
lines(c~a,col = "red",lty = 6,lwd = 2, pch = 19, type = "b")
?legend
?par
legend("bottomright", legend = c("group1" ,"group2"),col = c("blue","red"),pch = c(10,19),bty = "c",cex = 1,text.col = "black",pt.cex = 1)

#reverserang--------------------

u =  c(1:5)
v = c(50:54)
par(mfrow = c(2,2))
plot(u,v, ylim = rev(range(v)),col = "red",lwd = 1.2,lty = 1,type = "o")
plot(u,v,col = "red",lwd = 1,lty = 1.2,type = "o")
plot(v~u)
plot(u,v,xlim = rev(range(u)),type="o",col = "blue")




