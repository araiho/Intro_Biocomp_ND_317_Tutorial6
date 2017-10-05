#load and save data table as "score"
score=read.table("UWvMSU_1-22-13.txt", header=TRUE)

#create an empty matrix to hold cumulative scores
cum=matrix(NA,nrow(score),4)

#loop through score data table to generate each team's own column for scoring

for(i in 1:nrow(score)) {
  if(grepl("UW",score[i,2])){
    cum[(i),1]=score[i,3]
       
  }else{
    cum[(i),2]=score[i,3]
  }
}

#replace all NA's in the table with 0's


#add up each column to make the score cumulative

#plot the cumulative scores on a graph


#rename the headers on the data table
cumulative_score=data.frame(UW_scores=cum[,1],MSU_scores=cum[,2],UW_totalscore=cum[,3], MS_totalscore=cum[,4])