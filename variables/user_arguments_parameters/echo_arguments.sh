#!/bin/bash

# Counter for total arguments
count=0

# While there are still arguments
while [ $# -gt 0 ]; do
  echo "$1"
  shift
  count=$((count + 1))
done

# Show total number of arguments
echo "Total arguments: $count"
