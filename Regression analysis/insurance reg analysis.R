#kaggle project-------------------

data = read.csv("C:/Users/Admin/Desktop/R/insurance.csv")
data
names(data)
str(data)
summary(data)
sum(is.na(data))


data$sex.male = ifelse(data$sex=="male",1,0)
data$yes.smoker = ifelse(data$smoker=="yes",1,0)
levels(data$region)
data$region.northeast = ifelse(data$region=="northeast",1,0)
data$region.northwest = ifelse(data$region=="northwest",1,0)
data$region.southeast = ifelse(data$region=="southeast",1,0)
data$region.southwest = ifelse(data$region=="southwest",1,0)

data
str(data)

library(ggplot2)
ggplot(data,aes(region,charges))+geom_boxplot()
ggplot(data,aes(sex,charges))+geom_boxplot()
ggplot(data,aes(charges))+geom_histogram(bins=30)
ggplot(data,aes(region,charges))+geom_boxplot()+geom_jitter()
ggplot(data,aes(age,charges))+geom_point(aes(colour=smoker))+geom_smooth(method = 'gam',formula = y ~ s(x, bs = "cs"))


cor(data$charges,data$yes.smoker)
cor(data$charges,data$age)

insur_data = data[,c(1,4,7:13)]
insur_data
lm1= lm(charges~.,data=insur_data)
lm1=lm(charges~age+children+smoker+bmi+region,data=data)
lm1
summary(lm1)
names(data)
set.seed(1234)
rowind = sample(1:nrow(data),0.8*nrow(data))
train = data[rowind,] 
test = data[-rowind,]

lmtrain = lm(charges~age+children+smoker+bmi+region+sex,data=train)
summary(lmtrain)

pred = predict(lmtrain,test)
pred
summary(pred)

cbind(test$charges,pred)


library(usdm)
vif(insur_data)
