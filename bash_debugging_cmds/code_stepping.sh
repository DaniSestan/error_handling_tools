#!/bin/bash

# bash /home/dani/Work/Work-Projects/error_handling_tools/bash_debugger/main.sh

# `trap` command here is used to print the filename, line number and the line to exec on user prompt
# source: https://www.hotconfig.com/bash-debugging/

trap 'echo "[${BASH_SOURCE}:${LINENO}] $BASH_COMMAND" ; read -p "Continue?"' DEBUG

# Sample code:

file="/tmp/sample.txt"

touch "$file"

echo "Sample data" > "$file"

echo "Displaying contents of $file"

cat "$file"

echo "Removing $file"

rm "$file"
