#!/bin/bash
# This script shows permissions, file/folder counts, and names inside a directory

# Ask for directory path
echo "Enter a directory path:"
read dir

# Check if it exists and is a directory
if [ ! -d "$dir" ]; then
  echo "Error: '$dir' is not a valid directory."
  exit 1
fi

# Show directory permissions using 'ls -ld'
echo "Directory permissions:"
ls -ld "$dir"

# Count number of files
files=$(find "$dir" -maxdepth 1 -type f | wc -l)

# Count number of subdirectories (excluding the directory itself)
folders=$(find "$dir" -maxdepth 1 -type d | wc -l)
folders=$((folders - 1))

# Show names of files and folders
echo "Contents of '$dir':"
ls "$dir"

# Display results
echo "Number of files: $files"
echo "Number of subdirectories: $folders"
