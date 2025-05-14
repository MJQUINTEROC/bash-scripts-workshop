#!/bin/bash
# This script searches for a protocol name inside a Wireshark capture file (.txt or .csv).
# It counts the number of lines that contain the protocol, case-insensitive.

# Step 1: Check that exactly 2 parameters are passed
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <capture_file.txt|csv> <protocol>"
  exit 1
fi

# Assign parameters
file="$1"
protocol="$2"

# Step 2: Check if the file exists
if [ ! -f "$file" ]; then
  echo "Error: The file does not exist."
  exit 1
fi

# Step 3: Check if the file has a .txt or .csv extension
case "$file" in
  *.txt|*.csv)
    # Valid extension
    ;;
  *)
    echo "Error: The file must have a .txt or .csv extension."
    exit 1
    ;;
esac

# Step 4: Count lines containing the protocol (case-insensitive)
# grep -i: case-insensitive
# wc -l: count lines
count=$(grep -i "$protocol" "$file" | wc -l)

# Step 5: Show result
if [ "$count" -eq 0 ]; then
  echo "No matches found for protocol '$protocol'."
else
  echo "Lines containing protocol '$protocol': $count"
fi
