PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
elif [[ $1 =~ ^[0-9]+$ ]]; 
then
  ELEMENT=$($PSQL "SELECT * FROM elements WHERE atomic_number = $1");
else
  ELEMENT=$($PSQL "SELECT * FROM elements WHERE symbol = '$1'");
  if [[ -z $ELEMENT ]]
  then
    ELEMENT=$($PSQL "SELECT * FROM elements WHERE name = '$1'");
  fi
fi
if [[ -z $1 ]]
then
 N=""
elif [[ -z $ELEMENT ]]
then
  echo "I could not find that element in the database."
else
  IFS='|' read -r ATOMIC_NUMBER SYMBOL NAME <<< "$ELEMENT"
  DATA=$($PSQL "SELECT * FROM properties WHERE atomic_number = $ATOMIC_NUMBER")
  IFS='|' read -r ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS TYPE_ID <<< "$DATA"
  TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $TYPE_ID")
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
fi

