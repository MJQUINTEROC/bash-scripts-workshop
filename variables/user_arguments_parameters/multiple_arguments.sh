#!/bin/bash

# Show arguments without quotes
echo "Without quotes:"
echo '$*:' $*
echo '$@:' $@

# Show arguments with double quotes
echo
echo 'With quotes:'
echo '"$*":' "$*"
echo '"$@":'
for arg in "$@"; do
  echo "$arg"
done

# Explanation 
echo
echo "Explanation:"
echo '$* treats all arguments as a single string when quoted: "$*" => One single string'
echo '$@ treats each argument as a separate word when quoted: "$@" => Arguments preserved'
