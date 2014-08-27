##--  project euler 019

library(lubridate)
dates<-seq(ymd(19010101),ymd(20001231),by="1 week")
firstDay<-dates[day(dates)==1]
length(firstDay)        

##----------testing process


endDate=as.Date("31Dec2000","%d%b%Y")
startDate=as.Date("1jan1901","%d%b%Y")+5
weekdays(startDate)

df=data.frame(date=seq(from =startDate ,to=endDate,by="1 week"))

df[,2]<-weekdays(df[,1])

SundayData<-df[(day(df[,1])==1),]
length(SundayData[,1])
