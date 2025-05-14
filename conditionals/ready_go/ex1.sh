#!/bin/bash
# This script receives a file path and shows its permissions (read, write, execute)

# Ask the user for the file path
echo "Enter the file path:"
read filepath  # Read input from the keyboard

# Check if the file exists
if [ ! -e "$filepath" ]; then
  echo "Error: File does not exist."
  exit 1
fi

# Check if the file is readable
if [ -r "$filepath" ]; then
  echo "The file is readable."
else
  echo "The file is not readable."
fi

# Check if the file is writable
if [ -w "$filepath" ]; then
  echo "The file is writable."
else
  echo "The file is not writable."
fi

# Check if the file is executable
if [ -x "$filepath" ]; then
  echo "The file is executable."
else
  echo "The file is not executable."
fi
