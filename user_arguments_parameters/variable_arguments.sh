#!/bin/bash

# Initialize counter
index=1

# Create a copy of the arguments
for_argument="$@"

# Loop through all arguments using while, not for or if
while [ "$#" -gt 0 ]; do
  echo "Argument $index: $1"
  shift
  index=$((index + 1))
done

# Show total number of arguments using index - 1
echo "Total arguments: $((index - 1))"
