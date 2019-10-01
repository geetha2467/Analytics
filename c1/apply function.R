#apply functions----------------

#apply-----------------
x = matrix(c(1:12),nrow = 3,byrow = TRUE)
x
apply(x,2,sum)
apply(x,1,mean)

#lapply----------------------

y = list(A=c(1:9),B=c(2:10))
y
lapply(y,sum)

Z= c("TASK","GIVEN")
Z
unlist(lapply(Z,tolower))
sapply(Z,FUN = tolower)

ad = Titanic
ad

lapply(ad,min)

data(mtcars)
lapply(mtcars,min)

#sapply---------------------------
sapply(mtcars,min)

lapply(mtcars,max)
sapply(mtcars,max)

avg = min
sapply(mtcars,avg)

recruitment = c("mba","bba")
samdat =  sample(recruitment,size=1500,replace = TRUE,prob = c(.6,.4))
samdat
table(samdat)


tapply(samdat,mean)

#tapply----------


baseball.example <-
  data.frame(team = gl(5, 5,
                       labels = paste("Team", LETTERS[1:5])),
             player = sample(letters, 25),
             batting.average = runif(25, .200, .400))

summary(baseball.example)

tapply(baseball.example$batting.average,baseball.example$team,mean)

tapply(baseball.example$batting.average,baseball.example$team,min)

tapply(baseball.example$batting.average,baseball.example$team,max)

?gl

data(iris)

tapply(iris$Sepal.Width,iris$Species,min)


tapply(iris$Sepal.Width,iris$Species,max)


tapply(iris$Sepal.Width,iris$Species,mean)
