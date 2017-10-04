#make a vector of numbers from 1 to 100
v=1:100
#take input from the user-guess
guess=readline(prompt = 'Guess: ')
#thinking of a number
number= sample(v,size = 1,replace = FALSE, prob = NULL)

while (guess == number){print("Correct"); break}
while (guess < number){print("Higher")
  guess=readline(prompt = 'Guess: ')}

while (guess > number){print("Lower")
  guess=readline(prompt = 'Guess: ')}


while(guess != number){
  if(guess < number){
     print("Higher!")
  } else{
  print("Lower!")}
  guess=readline(prompt = 'Guess: ')
}
if (guess == number){print("Correct"); break}

while (guess == number){print("Correct"); break}
  