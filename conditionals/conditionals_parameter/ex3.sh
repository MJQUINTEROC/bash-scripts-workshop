#!/bin/bash
# This script performs a basic operation (add, subtract, multiply, divide) on two integers.

# Step 1: Check that exactly 3 parameters were passed
if [ "$#" -ne 3 ]; then
  echo "Error: You must provide an operation and two integer numbers."
  echo "Usage: $0 <operation> <number1> <number2>"
  exit 1
fi

# Assign parameters to variables for clarity
operation="$1"
num1="$2"
num2="$3"

# Step 2: Check if num1 and num2 are valid integers
# We use a pattern that matches integers using expr and comparisons
# Because the PDF doesn't cover regular expressions or advanced validation,
# we’ll check if arithmetic operations succeed

# Check num1 is a number
expr "$num1" + 0 >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Error: The second parameter must be an integer."
  exit 1
fi

# Check num2 is a number
expr "$num2" + 0 >/dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Error: The third parameter must be an integer."
  exit 1
fi

# Step 3: Check if the operation is one of the allowed
if [ "$operation" != "add" ] && [ "$operation" != "subtract" ] && [ "$operation" != "multiply" ] && [ "$operation" != "divide" ]; then
  echo "Error: Operation must be one of: add, subtract, multiply, divide"
  exit 1
fi

# Step 4: If operation is divide, ensure divisor is not zero
if [ "$operation" = "divide" ] && [ "$num2" -eq 0 ]; then
  echo "Error: Division by zero is not allowed."
  exit 1
fi

# Step 5: Perform the operation using expr
if [ "$operation" = "add" ]; then
  result=$(expr $num1 + $num2)
elif [ "$operation" = "subtract" ]; then
  result=$(expr $num1 - $num2)
elif [ "$operation" = "multiply" ]; then
  result=$(expr $num1 \* $num2)  # use \* to escape the multiplication symbol
elif [ "$operation" = "divide" ]; then
  result=$(expr $num1 / $num2)
fi

# Step 6: Show the result
echo "Result: $result"
