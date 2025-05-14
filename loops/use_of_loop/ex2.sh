#!/bin/bash
# This script receives a list of integers and counts positives, negatives, and zeros.

# Initialize counters
positive=0
negative=0
zero=0

# Loop through all the arguments
for number in "$@"; do
  # Check if it's a valid integer: allow optional minus sign
  case "$number" in
    -[0-9]*|[0-9]*) 
      # It's a valid integer
      if [ "$number" -gt 0 ]; then
        positive=$((positive + 1))
      elif [ "$number" -lt 0 ]; then
        negative=$((negative + 1))
      else
        zero=$((zero + 1))
      fi
      ;;
    *)
      # Not a valid number
      echo "Warning: '$number' is not a valid integer. Skipping."
      ;;
  esac
done

# Output the results
echo "Positive numbers: $positive"
echo "Negative numbers: $negative"
echo "Zeros: $zero"
