#box plot---------------------

boxplot(mpg~cyl,data=mtcars)
color = ifelse(levels(mtcars$cyl) == '8',col="green",ifelse(levels(mtcars$cyl) == '4',col = "yellow","grey"))
par(mfrow=c(2,3))
par(mgp = c(2,2,0))



boxplot(mpg~order,data= mtcars,col = "blue",boxwex=0.5)
order = with(mtcars,reorder(cyl,mpg,median,na.rm=T))

mtcars$cyl = factor(mtcars$cyl,levels = c(6,8,4))

boxplot(mtcars$mpg~mtcars$cyl,col="green",names = c(length(cyl==6),length(cyl==8),length(cyl==4)))        

proportion = table(mtcars$wt)/nrow(mtcars)
boxplot(mtcars$hp~mtcars$wt, width = proportion,col = c("green","blue"))
