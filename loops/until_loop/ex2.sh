#!/bin/bash

# Initialize count and an empty list
count=0

# Array to store valid numbers
numbers=()

# Until we have 3 valid integers
until [ "$count" -eq 3 ]; do
  echo "Enter integer number $((count + 1)):"
  read value

  # Check if it's a valid integer
  expr "$value" + 0 >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    numbers[$count]=$value
    count=$((count + 1))
  else
    echo "Invalid input. Please enter a valid integer."
  fi
done

# Extract values from the array
a=${numbers[0]}
b=${numbers[1]}
c=${numbers[2]}

# Calculate sum and product
sum=$((a + b + c))
product=$((a * b * c))

# Determine max
max=$a
if [ "$b" -gt "$max" ]; then max=$b; fi
if [ "$c" -gt "$max" ]; then max=$c; fi

# Determine min
min=$a
if [ "$b" -lt "$min" ]; then min=$b; fi
if [ "$c" -lt "$min" ]; then min=$c; fi

# Show results
echo "Sum: $sum"
echo "Product: $product"
echo "Maximum value: $max"
echo "Minimum value: $min"
