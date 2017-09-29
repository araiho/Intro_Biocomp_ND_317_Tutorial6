guess <- function(){
  
  print("I'm thinking of a number 1-100")
  x <- sample(1:100, 1)
  y=0
  y <- as.numeric(readline(prompt="Guess:"))
  while(x != y ){
    if(y>x){
      print("Lower")
      y <- as.numeric(readline(prompt="Guess:"))
    }
    else{
      print("Higher")
      y <- as.numeric(readline(prompt="Guess:"))
    }
  }
  print("Correct!")
}
guess()
  