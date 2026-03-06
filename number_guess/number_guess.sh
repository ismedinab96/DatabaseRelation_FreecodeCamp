#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
number_random()
{
  echo $(( (RANDOM %1000) +1))
}

echo "Enter your username:"
read USERNAME
USERNAME_ID=$($PSQL "SELECT user_id FROM players WHERE username LIKE '$USERNAME'")
if [[ -z $USERNAME_ID ]]
then
  INSERT_NEW_USER=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USERNAME_ID=$($PSQL "SELECT user_id FROM players WHERE username LIKE '$USERNAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id = $USERNAME_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id =$USERNAME_ID ")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  
fi
SECRET=$(number_random)
ATTEMPS=0
echo "Guess the secret number between 1 and 1000:"

while true
do
  read GUESS
  ((ATTEMPS++))
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
  elif [[ $GUESS -lt $SECRET ]]
    then
      echo "It's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET ]]
    then
      echo "It's lower than that, guess again:"
  else
    break
  fi
  
done
echo -e "You guessed it in $ATTEMPS tries. The secret number was $SECRET. Nice job!"
INSERT_GAMES=$($PSQL "INSERT INTO games(user_id,number_of_guesses) VALUES($USERNAME_ID,$ATTEMPS)")



