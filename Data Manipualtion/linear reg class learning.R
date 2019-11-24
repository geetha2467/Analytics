data(mtcars)
names(mtcars)
fit = lm(wt~disp+am,data=mtcars)
summary(fit)
library(dplyr)
test = data.frame(disp=144,am=0)
test

predict(fit,test)

cbind(predict(fit,test),test$wt)


#logistic

data("mtcars")
logis = glm(am~wt+gear,data=mtcars)
summary(logis)

#decision tree-----------------
install.packages('rpart')
library(rpart)
library(rpart.plot)

tree1 = rpart(am~.,data=df)
