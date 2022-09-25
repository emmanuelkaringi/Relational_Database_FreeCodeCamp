#!/bin/bash

#A questionnaire program

echo -e "\n~~ Questionnaire ~~\n" #Title

QUESTION1="What's your name?"

echo $QUESTION1

read NAME

QUESTION2="Where are you from?"

echo $QUESTION2

read LOCATION

QUESTION3="What's your favorite coding website?"

echo $QUESTION3

read WEBSITE

echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"

# Run this script by running ./questionnaire.sh in the terminal.
# If you recive a permission denied message, run chmod +x questionnaire.sh to change permission.