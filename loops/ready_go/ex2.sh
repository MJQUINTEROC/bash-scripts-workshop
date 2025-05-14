#!/bin/bash
# This script asks the user for a password and checks:
# - Minimum 8 characters
# - At least one uppercase letter
# - At least one digit

while true; do
  echo "Enter your password:"
  read password

  # Check password length
  length=$(echo "$password" | wc -c)
  length=$((length - 1))  # wc -c counts newline too

  if [ "$length" -lt 8 ]; then
    echo "Error: Password must be at least 8 characters long."
    continue
  fi

  # Check for uppercase letter
  echo "$password" | grep '[A-Z]' >/dev/null
  if [ $? -ne 0 ]; then
    echo "Error: Password must contain at least one uppercase letter."
    continue
  fi

  # Check for digit
  echo "$password" | grep '[0-9]' >/dev/null
  if [ $? -ne 0 ]; then
    echo "Error: Password must contain at least one digit."
    continue
  fi

  # If all conditions are met
  echo "Password is valid."
  break
done
