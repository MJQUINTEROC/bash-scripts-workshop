#!/bin/bash

# Ask for username
echo -n "Enter your username: "
read username

# Ask for password (hidden input)
echo -n "Enter your password: "
read -s password

# Print both on the same line
echo
echo "Username: $username | Password: $password"
