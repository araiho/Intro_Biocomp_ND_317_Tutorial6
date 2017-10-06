#Part 1
scores=read.table(file="UWvMSU_1-22-13.txt", header = TRUE, stringsAsFactors = FALSE)

scoreMSU <- NULL
scoreUW <- NULL

for (i in 1:nrow(scores)) {
  if (i == 1) {
    scoreMSU[i] = 0
    scoreUW[i] = 3
  }
  else if (scores[i,2] == "UW"){
    scoreUW[i] = scoreUW[i-1] + scores[i,3]
    scoreMSU[i] = scoreMSU[i-1]
  } else {
    scoreMSU[i] = scoreMSU[i-1] + scores[i,3]
    scoreUW[i] = scoreUW[i-1]
  }
}

plot(scores$time, scoreMSU, xlab = "Time (Seconds)", ylab = "Score", main = "Basketball Scores", sub="MSU is Green, UW is Red", type ="l", col="green")
lines(scores$time,scoreUW, col="red")


#Part 2
x <- 1:100
userINT <- 0
randomINT <- sample(x,1)
print("I'm thinking of a number between 1 and 100. Guess!")
userINT <- readline("enter a positive integer: ")


while (userINT != randomINT){
  if (userINT < randomINT){
    userINT <- readline("Nope! Guess a bigger number ")
  }
  else if (userINT > randomINT){
    userINT <- readline("Nope! Guess a smaller number ")
  }
}
print("Great job! The number was")
randomINT