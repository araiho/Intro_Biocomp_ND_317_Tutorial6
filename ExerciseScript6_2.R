num <- sample(seq(1,100), size = 1)
guess <- 0
cat("Guess an integer between 0 and 100.")
while(guess != num)
{
  guess <- readinteger()
  if (guess == num)
  {
    cat("Richtig!,", num, "is right. Go buy yourself a lottery ticket while luck is on your side!")
  }
  else if (guess < num)
  {
    cat("The number is larger, guess again!")
  }
  else if(guess > num)
  {
    cat("The number is smaller, guess again!")
  }
}

