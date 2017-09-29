rm(list=ls())

ScoreMat=read.table("UWvMSU_1-22-13.txt",header=TRUE)

TimeVec=ScoreMat[,1]
UWVec=numeric(length=50)
MSUVec=numeric(length=50)

#Initializing Vectors
UWVec[1]=ScoreMat[1,3]

for (i in 2:nrow(ScoreMat)){
  if (ScoreMat[i,2]=='UW'){
    UWVec[i]=ScoreMat[i,3]+UWVec[i-1]
    MSUVec[i]=MSUVec[i-1]
  }
  else {
    MSUVec[i]=ScoreMat[i,3]+MSUVec[i-1]
    UWVec[i]=UWVec[i-1]
  }
}

plot(TimeVec,UWVec,type='l',col="Red",xlab="Time",ylab="Score")
lines(TimeVec,MSUVec,col="Green")