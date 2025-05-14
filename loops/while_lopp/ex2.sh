#!/bin/bash
# This script lists system users with uppercase letters in their name,
# asks for a valid username, and shows all its information.

# Step 1: Show users with uppercase letters (filter usernames only)
echo "System users with uppercase letters:"
cut -d: -f1 /etc/passwd | grep '[A-Z]'

# Step 2: Ask the user to enter a valid username
while true; do
  echo "Enter a username from the list above:"
  read username

  # Check if user exists in the system
  grep "^$username:" /etc/passwd >/dev/null
  if [ $? -eq 0 ]; then
    break  # Username is valid
  else
    echo "Error: User '$username' does not exist."
  fi
done

# Step 3: Show all user information from /etc/passwd
echo "Information for user '$username':"
grep "^$username:" /etc/passwd
