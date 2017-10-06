#Script for Problem 1
#Subsets initial table into team, then uses cumsum to calculate running total and plot by time
scores<-read.table(file="UWvMSU_1-22-13.txt",header=TRUE)
UWSubset<-subset(scores, team=="UW")
UWScores=UWSubset[ ,3]
UWTime=UWSubset[ ,1]
UWCumScore=cumsum(UWScores)
MSUSubset<- subset(scores, team=="MSU")
MSUScores=MSUSubset[ ,3]
MSUTime=MSUSubset[ ,1]
MSUCumScore=cumsum(MSUScores)
#Now to plot...
plot(UWTime,UWCumScore,type='l',xlab="Time (mins)",ylab = "Cummulative Score",main="UW vs MSU Scores Throughout Game")
lines(MSUTime,MSUCumScore)
