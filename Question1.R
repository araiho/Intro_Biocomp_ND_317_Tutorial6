scores <- read.table("/Users/elizabethfortin12/Documents/ND First Year/Biocomputing/Exercise6/UWvMSU_1-22-13.txt",header=TRUE)

tot.score.UW <- as.vector(0)
tot.score.MSU <- as.vector(0)
tot.score <- data.frame(time=numeric(),
                        team=character(),
                        total=numeric(), stringsAsFactors = FALSE)

for (i in 1:nrow(scores)){
  if (scores[i,2] == "UW"){
    tot.score.UW <- tot.score.UW + scores[i,3]
    tot.score[i,1] <- scores[i,1]
    tot.score[i,2] <- "UW"
    tot.score[i,3] <- tot.score.UW
  }
  else if (scores[i,2] == "MSU"){
    tot.score.MSU <- tot.score.MSU + scores[i,3]
    tot.score[i,1] <- scores[i,1]
    tot.score[i,2] <- "MSU"
    tot.score[i,3] <- tot.score.MSU
  }
}
tot.score

library(ggplot2)

ggplot(data=tot.score,aes(x=time, y=total)) +
  geom_line(aes(colour=team))+
  labs(x='Time', y='Game Score')


