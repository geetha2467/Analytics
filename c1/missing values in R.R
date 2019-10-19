#missing values in r-----------------------

df = data.frame(A = c(2,4,5,NA), B= c(5,NA,8,NA),C=c(2,5,NA,6))
df

is.na(df)


any(is.na(df))

sum(is.na(df))

summary(df)

complete.cases(df)
df[complete.cases(df),]


getwd()
data = data.table(file.choose())
