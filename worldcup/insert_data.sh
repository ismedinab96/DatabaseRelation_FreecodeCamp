#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE TABLE teams, games;"

cat games.csv | while IFS=',' read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    WINNER_TEAM=$($PSQL "SELECT name FROM teams WHERE name = '$WINNER'")
    if [[ -z $WINNER_TEAM ]]
    then
      $PSQL "INSERT INTO teams (name) VALUES ('$WINNER')"
    fi
    OPPONENT_TEAM=$($PSQL "SELECT name FROM teams WHERE name = '$OPPONENT'")
    if [[ -z $OPPONENT_TEAM ]]
    then
      $PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT')"
    fi
    WG_ID=$($PSQL" SELECT team_id FROM teams WHERE name = '$WINNER'")
    OG_ID=$($PSQL" SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    $PSQL "INSERT INTO games (year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR,'$ROUND',$WG_ID,$OG_ID,$WINNER_GOALS,$OPPONENT_GOALS)"
  fi

done