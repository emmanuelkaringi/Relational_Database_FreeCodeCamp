#!/bin/bash

# Program that counts down to zero from a given argument.

echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]]
then
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I
    (( I-- ))
    sleep 1
  done
else
  echo Include a positive integer as the first argument.
fi


# Run chmod +x countdown_while_loop.sh to change permission.

# Run this script by running ./countdown_while_loop.sh + an argument in the terminal e.g. ./countdown_while_loop.sh 10