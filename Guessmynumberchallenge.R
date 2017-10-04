#Note: code is designed to work from source and not interactively

rm(list=ls())

#make a vector of numbers from 1 to 100
v=1:100

#thinking of a number
number= sample(v,size = 1,replace = FALSE, prob = NULL)

print("I'm thinking of a number 1-100...")

#take input from the user-guess
guess=readline(prompt = 'Guess: ')

while(guess != number){
  if(guess < number){
     print("Higher!")
  } else{
  print("Lower!")}
  guess=readline(prompt = 'Guess: ')
}
print("Correct!")


  