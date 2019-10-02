library(dplyr)
data("iris")
select(iris,Sepal.Length,Species,Petal.Length)

#filter------
filter(iris,Species==c("setosa","versicolor"))

#ARRANGE------------
arrange(iris,Sepal.Length)

?group_by

group_by(iris,"Species")

#FILTER--------
filter(iris,Sepal.Length > 6 & Sepal.Width >3)

#arrange-------------------
arrange(iris,desc(Sepal.Length))

#mutate------------
mutate(iris,combined = Sepal.Width + Sepal.Length)
?mutate

#groupby and summaries--------------------------

group_by(iris,Species)%>%
  summarise(mean(Sepal.Length), na.rm=TRUE)
            