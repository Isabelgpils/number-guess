#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~ Number Guessing Game ~~\n"

echo "Enter your username:"
read USERNAME

PREVIOUS_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

GET USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $PREVIOUS_USER ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games LEFT JOIN users USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guess_count) FROM games LEFT JOIN users USING(user_id) WHERE username='$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$((1 + $RANDOM % 1000))
echo "Guess the secret number between 1 and 1000:"
read USER_GUESS

GUESS_COUNT=1


until [[ $USER_GUESS == $RANDOM_NUMBER ]]
do
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
      read USER_GUESS
      ((GUESS_COUNT++))
  else
    if [[ $USER_GUESS < $RANDOM_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        read USER_GUESS
        ((GUESS_COUNT++))
    else 
      echo "It's lower than that, guess again:"
      read USER_GUESS
      ((GUESS_COUNT++))
    fi  
  fi
done

GET_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
UPDATE_GAMES=$($PSQL "INSERT INTO games(user_id, secret_number, guess_count) VALUES ($GET_USER_ID, $RANDOM_NUMBER, $GUESS_COUNT)")

echo You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!

