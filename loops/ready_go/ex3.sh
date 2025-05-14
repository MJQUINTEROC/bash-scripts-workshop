#!/bin/bash
# Interactive menu script with 3 options

choice=0

until [ "$choice" -eq 3 ]; do
  echo "---------------------------"
  echo "1) Show current date and time"
  echo "2) Check if a file exists"
  echo "3) Exit"
  echo "---------------------------"
  echo "Enter your choice (1-3):"
  read choice

  case "$choice" in
    1)
      echo "Current date and time:"
      date
      ;;
    2)
      echo "Enter file path:"
      read filepath
      if [ -f "$filepath" ]; then
        echo "The file '$filepath' exists."
      else
        echo "The file '$filepath' does not exist."
      fi
      ;;
    3)
      echo "Exiting. Goodbye!"
      ;;
    *)
      echo "Invalid option. Please choose 1, 2 or 3."
      choice=0  # Reset to keep looping
      ;;
  esac
done
