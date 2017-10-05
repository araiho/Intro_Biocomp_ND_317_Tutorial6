#load and save data table as "score"
score=read.table("UWvMSU_1-22-13.txt", header=TRUE)

#separate the UW and MSU scores into their own data tables
a=subset(score, team=="UW")
b=subset(score, team=="MSU")

#add another column to both of the two data tables with calculated cumulative score
a=cbind(a,cumsum(a$score))
b=cbind(b,cumsum(b$score))

#plot cumulative score columns from the respective data tables
plot(a$time,a$`cumsum(a$score)`,type='l',col="red",xlab="time",ylab="score",xlim=c(0,40),ylim=c(0,50))
lines(b$time,b$`cumsum(b$score)`,col="forestgreen")