
### Question 1 ###


# Set working directory
setwd("C:/Users/Michelle Wang/Desktop/BIOS 
60318/Intro_Biocomp_ND_317_Tutorial6")

# Read table
timescore = read.table(file= "UWvMSU_1-22-13.txt", header = TRUE)

# Set initial scores at time = 0
MSUscore = 0
UWscore = 0

# Create table to write into
sumScore = data.frame(matrix(data = NA, nrow = 50, ncol = 3))

## Create column names
names = c("Time", "MSUScore", "UWScore")
colnames(sumScore)= names?

## Add time to sumScore
sumScore$Time = timescore$time

## Cummulate scores 
for(x in 1:nrow(timescore)){
  if (timescore$team[x]=="MSU"){
    MSUscore = MSUscore + timescore$score[x]
    UWscore = UWscore
    sumScore$MSUScore[x] <- MSUscore
    sumScore$UWScore[x] <- UWscore
  }else{
    UWscore = UWscore + timescore$score[x]
    MSUscore = MSUscore
    sumScore$MSUScore[x] <- MSUscore
    sumScore$UWScore[x] <- UWscore
  }
}

## Plot graph
plot = ggplot(sumScore, aes(sumScore$Time)) +
  geom_line(aes(y=sumScore$MSUScore, color="darkgreen")) +
  geom_line(aes(y=sumScore$UWScore, color="red4")) +
  theme_classic() +
  xlab("Time (sec)") +
  ylab("Score") +
  scale_color_manual(labels=c("MSU", "UW"), values = c("darkgreen", 
"red4")) + 
  ggtitle("Score between MSU and UW by Time") +
  theme(plot.title = element_text(hjust = 0.5))

plot



###Question 2:  "Guess my number!"

#Set a sequence of numbers 1:100 in a variable named "Numbers".
Numbers <- seq(1:100)

#Generate a random number and addign it a name
answer <- sample(Numbers,1)

#Prompt user to guess
guess <- function(){
as.numeric(readline(prompt = "Guess (must be an integer):"))
}
  
#Read user input
#return()
y=0
y<-guess()

#Do-while loop
while (y != answer) {
    if (y<answer) {
     print("Higher")
    }
    else if (y>answer) {
      print("Lower")
    }
  y<-guess()
  }

print("Correct!")
