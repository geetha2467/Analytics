#cleaning the data using tidyr package--------------------------

names <- c('A','B','C','D','E','A','B')
weight <- c(55,49,76,71,65,44,34)
age <- c(21,20,25,29,33,32,38)
Class <- c('Maths ','Science','Social','Physics','Biology','Economics','Accounts')

tydrr = data.frame(names,weight,age,Class)
tydrr
install.packages("tidyr")
library(tidyr)

#gather----------
long = tydrr%>%gather(key,value, c(age,Class))
long

#spread---------
wide = long%>%spread(key,value)
wide

Humidity <- c(37.79, 42.34, 52.16, 44.57, 43.83, 44.59)
Rain <- c(0.971360441, 1.10969716, 1.064475853, 0.953183435, 0.98878849, 0.939676146)
Time <- c("27/01/2015 15:44","23/02/2015 23:24", "31/03/2015 19:15", "20/01/2015 20:52", "23/02/2015 07:46", "31/01/2015 01:55")
tydr = data.frame(Humidity,Rain,Time)
tydr

#seperate-----------
#unite-------------------
seperate = tydr%>% separate(Time,c('date','month','year'))
seperate
?separate


seperate%>%unite(Time,c(date,month,year),sep="/")
