#Tutorial 6 (Shane Davitt and Kate vendrely)
#
#Question 1
#
#view data set
OrigData=read.table("UWvMSU_1-22-13.txt", header=FALSE)
#Initialize a matrix to store a history cummulative score over time for each team.
scorecard=array(dim=c(51,3))
#
#Intitialize an array to store cummulative store within the for loop.
#MiddleMan=array(dim=c(1,2))
#valstore is used to store the team name of each score within the loop.
for(i in scorecard[2:51,1]){
    valstore=origData[i,2]
    if (valstore=="UW"){
         MiddleMan[1,1]=sum(MiddleMan[1,1],origData[i,3])
         scorecard[i,2]=MidleMan[1,1]
     } else {
           MiddleMan[1,2]=sum(MiddleMan[1,2], origData[i,3])
           scorecard[i,3]=MiddleMan[1,2]
   }
 }
scorecard[,1]=OrigData[2:51,1]
plot(scorecard[,1],scorecard[,2],type="l")
lines(scorecard[,1],scorecard[,3])

  

    
    