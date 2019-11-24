
#date---------------- 
install.packages('lubridate')
library(lubridate)
now()
time = now()
time
time+ddays(2)
time+dweeks(3)
time+dyears(3)
leap_year(time)


times = update(time, year=2010, month = 1 )
times

month(time)
year(time)
second(time)
minute(time)
hour(time)
week(time)
quarter(time)
month(time,labeel = T,abbr = T)
month(time,label=T,abbr = F)
wday(time,label=F,abbr = F)


bday =as.Date("10/02/2019",format='%d/%m/%Y')
bday
class(bday)
bdayy = as.Date(bday)
bdayy
class(bdayy)
month(bday)
year(bday)
day = as.Date(c('20/02/2019','21/02/2019','22/02/2019'))
day
as.Date(day,format="%d/%m/%Y")
dmy(day)