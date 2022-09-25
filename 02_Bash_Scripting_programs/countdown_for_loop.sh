#!/bin/bash

# Program that counts down to zero from a given argument.

echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]]
then
  for (( i=$1; i >= 0; i-- ))
  do
    echo $i
    sleep 1 #Stop for 1 second before printing the next number.
  done
else
  echo Include a positive integer as the first argument.
fi

# Run chmod +x countdown_for_loop.sh to change permission.

# Run this script by running ./countdown_for_loop.sh + an argument in the terminal e.g. ./countdown_for_loop.sh 10