#!/bin/bash
echo "$1"

# Strips ".c" automatically if you accidentally type it
file_name="${1%.c}"

# Check if the source file actually exists

# Compile and only run if compilation is 100% successful
if gcc "$file_name.c" -o "$file_name"; then
    echo "-----------------------"
    ./"$file_name"
else
    echo "Compilation failed. Program will not run."
fi


