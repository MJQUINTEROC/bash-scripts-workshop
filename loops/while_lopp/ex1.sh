#!/bin/bash
# This script reads words from the keyboard and saves them to a file
# It stops when the user types ':>'

# Ask for the destination file
echo "Enter the name of the file to save the words:"
read filename

# Check if the file exists; if not, create it
if [ ! -f "$filename" ]; then
  echo "The file does not exist. It will be created."
  touch "$filename"
fi

# Start reading words using a while loop
echo "Start typing words (type ':>' to stop):"
while true; do
  read word
  if [ "$word" = ":>" ]; then
    break  # Exit the loop
  fi
  echo "$word" >> "$filename"  # Append word to file
done

echo "Words saved to $filename"

