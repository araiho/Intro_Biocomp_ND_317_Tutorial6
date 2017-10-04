rm(list=ls())

#make a vector of numbers from 1 to 100
v=1:100
#take input from the user-guess
guess=100000
#thinking of a number
number= sample(v,size = 1,replace = FALSE, prob = NULL)

print("I'm thinking of a number 1-100...")

while(guess != number){
  if (guess == 100000){
    print("Make a guess")
  }
  else if(guess < number){
     print("Higher!")
  } else{
  print("Lower!")}
  guess=readline(prompt = 'Guess: ')
}


  