#data manipulation data.table-------------------------

library(dplyr)
data("mtcars")
mtcars =  data.table("mtcars")
library(data.table)
mtcars =  data.table("mtcars")

mydata = data("mtcars")
myda = data.table(mtcars)
myda
myda[,2:10]
myda[1:10,1:3]
myda[cyl %in% c(6,4)]
myda[,.(cyl,disp,hp)]
myda[,{print(cyl)
  plot(cyl)
  }]
myda[,.(sum(cyl,na.rm=TRUE),mean(cyl,na.rm=TRUE))]
myda[,(cylsum = sum(cyl,na.rm = TRUE)),by=am]

myda[,mean(hp,na.rm = TRUE),by=.(cyl,am)]

myda[,mean(hp),by=am]
myda[,.(mean(hp),sum(hp)),by=am]
myda[,.N]

?plot


