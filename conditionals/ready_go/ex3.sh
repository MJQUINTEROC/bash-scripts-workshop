#!/bin/bash
# This script compresses a given directory into a .tar.gz file.
# It checks that the path is a directory and asks for confirmation if the output file already exists.

# Step 1: Check that exactly 2 parameters are passed
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <directory_path> <output_name.tar.gz>"
  exit 1
fi

# Assign parameters to variables
dir="$1"
tarball="$2"

# Step 2: Check that the path exists and is a directory
if [ ! -d "$dir" ]; then
  echo "Error: $dir is not a directory or does not exist."
  exit 1
fi

# Step 3: If the tarball already exists, ask the user for confirmation
if [ -e "$tarball" ]; then
  echo "$tarball already exists. Do you want to overwrite it? (y/n)"
  read answer
  if [ "$answer" != "y" ]; then
    echo "Operation cancelled."
    exit 1
  fi
fi

# Step 4: Compress the directory into a .tar.gz file
# 'tar -czf' compresses into gzip format
tar -czf "$tarball" "$dir"

# Final message
echo "Directory '$dir' compressed successfully into '$tarball'."
