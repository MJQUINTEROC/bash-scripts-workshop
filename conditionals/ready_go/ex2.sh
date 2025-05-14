#!/bin/bash
# This script receives a path and tells if it's a directory or a file.
# If it's a file, it shows its extension.

# Ask for the path
echo "Enter the path:"
read path  # Store the input in the variable 'path'

# Check if it's a directory
if [ -d "$path" ]; then
  echo "It is a directory."

# If it's not a directory, check if it's a file
elif [ -f "$path" ]; then
  echo "It is a file."

  # Extract the extension from the file name
  # Remove everything before the last dot (.)
  extension="${path##*.}"

  # If the file has no extension, 'extension' will be equal to the full name
  if [ "$extension" = "$path" ]; then
    echo "The file has no extension."
  else
    echo "File extension: $extension"
  fi

# If it's neither a file nor a directory
else
  echo "Error: The path is not a valid file or directory."
fi
