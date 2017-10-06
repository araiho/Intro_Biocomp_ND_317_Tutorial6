#creates a guessing_game function
guessing_game = function()
{ 
  readline(prompt = "I'm thinking of a number between 1-100... hit enter and then type your guess ")
  n <- readline(prompt="Guess:")
  if(!grepl("^[0-9]+$",n))
  {
    return(guessing_game())
  }
  return(as.integer(n))
}

##to run the game, start here and run the code beneath. the loop will run until the
#correct number is guessed, to play again, rerun the code beneath.

#creates a random number and resets the previous player's guess
rand=sample(seq(1,100), size = 1)
guess <- -1

#loop that runs the program and determines if the player is close to the number or not
while(guess != rand)
{ 
  guess=guessing_game()
  if (guess == rand)
  {
    cat("Correct!")
  }
  else if (guess < rand)
  {
    cat("Higher")
  }
  else if(guess > rand)
  {
    cat("Lower")
  }
}