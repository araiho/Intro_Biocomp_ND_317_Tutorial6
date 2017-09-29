#Question 2

while (x!=79){
  x=readline(prompt='guess:')
  if(x<79){
    print("Higher") 
  }
  else if(x>79){
    print("Lower")
  }
  else {
    print("Correct!")
  }
}
