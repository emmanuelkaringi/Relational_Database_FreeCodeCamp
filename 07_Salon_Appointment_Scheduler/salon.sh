#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ Immah's Salon ~~~~~\n"

echo -e "\nWelcome to Immah's Salon, how may I help you?\n"

MAIN_MENU(){
  if [[ $1 ]]
  then
    echo -e "$1"
  fi

  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "$SERVICES" | sed 's/|/ /g' | while read SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
  
  echo "0 for Exit"
  read SERVICE_ID_SELECTED
  
  SERVICE_EXIST=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  
  if [[ $SERVICE_ID_SELECTED == 0 ]]
  then
   exit
  
  else
    if [[ -z $SERVICE_EXIST ]]
    then
      MAIN_MENU "I could not find that service. What would you like today?"
    else
      echo "What's your phone number?"
      ENTER_PHONE(){
        read CUSTOMER_PHONE
        if [[ -z $CUSTOMER_PHONE ]]
        then
          echo "You didn't enter a phone number, try again:"
          ENTER_PHONE
        else
          PHONE_EXIST=$($PSQL "SELECT name FROM customers WHERE phone='$PHONE'")
          if [[ -z $PHONE_EXIST ]]
          then
            echo "I don't have a record for that phone number, what's your name?"
            ENTER_NAME(){
              read CUSTOMER_NAME 
              if [[ -z $CUSTOMER_NAME ]]
              then
                echo "You didn't enter your name, try again:"
                ENTER_NAME
              else
                CLIENT_REGISTRATION=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
              fi
            }

            ENTER_NAME
          else
            CUSTOMER_NAME=$PHONE_EXIST
          fi
          
          SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED" | sed 's/^ *//g')
          
          echo -e "What time would you like your $SERVICE_NAME, $CLIENT_NAME?"
          ENTER_TIME(){
            read SERVICE_TIME
            if [[ -z $SERVICE_TIME ]]
            then
              echo "You didn't enter an appointment time, try again:"
              ENTER_TIME
            else
              CLIENT_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
              APPOINTMENT_REGISTRATION=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CLIENT_ID, $SELECTED, '$SERVICE_TIME')")
              echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CLIENT_NAME."
            fi
          }
          ENTER_TIME
        fi
      }
      ENTER_PHONE
    fi
  fi
}
MAIN_MENU