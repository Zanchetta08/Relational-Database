#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( (RANDOM % 1000) + 1 ))
echo "Enter your username:"
read USERNAME
NEW_USER=$($PSQL "SELECT * FROM users WHERE username = '$USERNAME'")
IFS='|' read -r USER_ID USERNAME_FROM_DB GAMES_PLAYED BEST_GAME <<< "$NEW_USER"
if [[ -z $NEW_USER ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
echo "Guess the secret number between 1 and 1000:"
read GUESS
while [[ ! $GUESS =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS
done
NUMBER_OF_GUESSES=1
while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ $GUESS > $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read GUESS
    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
      echo "That is not an integer, guess again:"
      read GUESS
    done
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
  else
    echo "It's higher than that, guess again:"
    read GUESS
    while [[ ! $GUESS =~ ^[0-9]+$ ]]
    do
      echo "That is not an integer, guess again:"
      read GUESS
    done
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
  fi
done
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
if [[ -z $NEW_USER ]]
then
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 1, $NUMBER_OF_GUESSES)")
else
  GAMES_PLAYED=$((GAMES_PLAYED+1))
  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
  then
    BEST_GAME=$NUMBER_OF_GUESSES
  fi
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', $GAMES_PLAYED, $BEST_GAME)")
fi

  