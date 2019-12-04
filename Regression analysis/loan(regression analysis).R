data = read.csv("C:/Users/Admin/Desktop/R/loan default.csv")
data
names(data)
pairs(data)
str(data)
data$Credit.History[data$Credit.History== 'Poor'] = 'poor' 
data$Credit.History[data$Credit.History== 'very good'] = 'verygood'
data$Female = ifelse(data$Gender== "Female",1,0)
data$default = ifelse(data$Status=="Default",1,0)
data$job.management = ifelse(data$Job=="Management",1,0)
data$job.skilled = ifelse(data$Job=="skilled",1,0)
data$job.unskilled = ifelse(data$Job=="unskilled",1,0)
data$pur.car = ifelse(data$Purpose=="car",1,0)
data$pur.edu = ifelse(data$Purpose=="education",1,0)
data$pur.cons.durable = ifelse(data$Purpose=="consumer.durable",1,0)
data$pur.personal = ifelse(data$Purpose=="personal",1,0)
data$cH.critical = ifelse(data$Credit.History=="critical",1,0)
data$cH.good = ifelse(data$Credit.History=="good",1,0)
data$cH.poor = ifelse(data$Credit.History=="poor",1,0)
data$cH.verygood = ifelse(data$Credit.History=="verygood",1,0)

levels(data$Job)

data
str(data)
levels(data$Purpose)
levels(data$Credit.History)

sum(is.na(data))

set.seed(1234)
rowind = sample(1:nrow(data),0.8*nrow(data))  
train = data[rowind,]
test = data[-rowind,]

sum(data$default)
sum(train$default)
sum(test$default)

reg.train = train[,c(2,4,5,6,11,12,14,15,17,19,21,22,23)]
reg.test = test[,c(2,4,5,6,11,12,14,15,17,19,21,22,23)]

t.data = 
names(data)
lm1 = lm(EMI.Ratio~.,data=reg.train)
lm1
summary(lm1)
pred = predict(lm1,reg.test)
cbind(reg.test$EMI.Ratio,pred)
str(data)


library(Metrics)
mape(pred,reg.test$EMI.Ratio)
