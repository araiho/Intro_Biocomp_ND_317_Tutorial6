readinteger <- function()
{ 
  n <- readline(prompt="Enter an integer: ")
  if(!grepl("^[0-9]+$",n))
  {
    return(readinteger())
  }
  return(as.integer(n))
}

number <- sample(c(1,100), 1, replace = FALSE)
guess <- 0
cat("Guess a number between 1 - 100\n")

while(guess != number)
{ 
  guess <- readinteger()
  if (guess == number)
  {
    cat("correct!\n")
  }
  else if (guess < number)
  {
    cat("higher\n")
  }
  else if(guess > number)
  {
    cat("lower\n")
  }
}