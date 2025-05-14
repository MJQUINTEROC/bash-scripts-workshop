#!/bin/bash
# This script removes comment lines from a file, searches a word, and appends a sentence.

# Ask the user for the name of the file to clean
echo "Enter the name of the file:"
read file

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "Error: File does not exist."
  exit 1
fi

# Create a temporary file without comments (lines starting with #)
# We'll use grep to exclude lines that start with #
grep -v '^#' "$file" > temp_file.txt

# Ask the user for a word or phrase to search
echo "Enter a word or phrase to search in the file (without comments):"
read keyword

# Search the word/phrase in the cleaned file
grep -i "$keyword" temp_file.txt >/dev/null
if [ $? -eq 0 ]; then
  echo "The word/phrase '$keyword' was found."
else
  echo "The word/phrase '$keyword' was NOT found."
fi

# Ask the user for a sentence to append (mandatory step)
echo "Enter a sentence to add at the end of the file:"
read new_sentence

# Append the sentence to the cleaned file
echo "$new_sentence" >> temp_file.txt

# Replace original file with the updated version (optional)
# mv temp_file.txt "$file"

# Or just keep the cleaned + updated version as a new file
echo "Updated file saved as: temp_file.txt"
