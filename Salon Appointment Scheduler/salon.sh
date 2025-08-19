#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~"
echo -e "\nWelcome to My Salon, how can I help you?"
SERVICES_MENU(){
  SERVICES=$($PSQL "SELECT * FROM services")
  echo "$SERVICES"| while read SERVICE_ID NAME
  do
    NAME_FORMATTED=$(echo $NAME | sed 's/| //') 
    echo "$SERVICE_ID) $NAME_FORMATTED"
  done
  read SERVICE_ID_SELECTED
  AVAILABLE_SERVICE=$($PSQL "SELECT * FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  if [[ -z $AVAILABLE_SERVICE ]]
  then
    echo -e "\nI could not find that service. What would you like today?"
    SERVICES_MENU
  else
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_EXIST=$($PSQL "SELECT * FROM customers WHERE phone = '$CUSTOMER_PHONE';")
    if [[ -z $CUSTOMER_EXIST ]]
    then 
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      echo -e "\nWhat time would you like to schedule $CUSTOMER_NAME?"
      read SERVICE_TIME
    fi
    INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
    INSERT_SERVICE=$($PSQL "INSERT INTO appointments(service_id, customer_id, time) VALUES('$SERVICE_ID_SELECTED', '$CUSTOMER_ID', '$SERVICE_TIME')")
    echo -e "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

SERVICES_MENU





