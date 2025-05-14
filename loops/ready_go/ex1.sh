#!/bin/bash
# Rock, paper, scissors game against the machine

# Possible options
options=("rock" "paper" "scissors")

echo "Welcome to Rock, Paper, Scissors!"
echo "Type 'rock', 'paper', or 'scissors' to play. Type 'exit' to quit."

while true; do
  # Ask for user input
  echo "Your choice:"
  read user

  # Allow user to exit
  if [ "$user" = "exit" ] || [ "$user" = "salir" ]; then
    echo "Thanks for playing!"
    break
  fi

  # Validate input
  if [ "$user" != "rock" ] && [ "$user" != "paper" ] && [ "$user" != "scissors" ]; then
    echo "Invalid choice. Please choose rock, paper, or scissors."
    continue
  fi

  # Generate machine choice (random number between 0 and 2)
  number=$((RANDOM % 3))
  machine=${options[$number]}
  echo "Machine chose: $machine"

  # Determine the winner
  if [ "$user" = "$machine" ]; then
    echo "It's a tie!"
  elif [ "$user" = "rock" ] && [ "$machine" = "scissors" ] || \
       [ "$user" = "paper" ] && [ "$machine" = "rock" ] || \
       [ "$user" = "scissors" ] && [ "$machine" = "paper" ]; then
    echo "You win!"
  else
    echo "Machine wins!"
  fi
done
