#!/bin/bash
# This script checks Internet connection to the school's website
# and opens it in Firefox when available.

# Define school website URL
school_url="www.ies-sabadell.cat"

# Loop until the website is reachable
while true; do
  # Try to reach the site silently with wget
  wget -q --spider "$school_url"

  # Check the result
  if [ $? -eq 0 ]; then
    echo "Connection available. Opening the school's website..."
    firefox "$school_url" &
    break
  else
    echo "No Internet connection. Retrying in 5 seconds..."
    sleep 5
  fi
done
