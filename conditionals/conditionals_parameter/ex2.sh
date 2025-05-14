#!/bin/bash
# This script checks if a given file exists, shows its type, and displays its permissions.

# Step 1: Check that exactly ONE argument has been provided
if [ $# -ne 1 ]; then
  # $# = number of parameters passed to the script
  # -ne = "not equal"
  echo "Usage: $0 <file_path>"  # $0 = script name
  exit 1
fi

# Step 2: Check if the provided file exists
if [ ! -e "$1" ]; then
  # -e checks if the file exists
  # ! means "not"
  echo "Error: File does not exist."
  exit 1
fi

# Step 3: Show the file type using the 'file' command
file "$1"

# Step 4: Check permissions

# -r checks if the file is readable
if [ -r "$1" ]; then
  echo "The file is readable."
else
  echo "The file is not readable."
fi

# -w checks if the file is writable
if [ -w "$1" ]; then
  echo "The file is writable."
else
  echo "The file is not writable."
fi

# -x checks if the file is executable
if [ -x "$1" ]; then
  echo "The file is executable."
else
  echo "The file is not executable."
fi
