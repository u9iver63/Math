#!/bin/bash

read -p "Enter C filename: " input

# Strips ".c" automatically if you accidentally type it
file_name="${input%.c}"

# Check if the source file actually exists
if [ ! -f "$file_name.c" ]; then
    echo "Error: $file_name.c not found!"
    exit 1
fi

# Compile and only run if compilation is 100% successful
if gcc "$file_name.c" -o "$file_name"; then
    echo "-----------------------"
    ./"$file_name"
else
    echo "Compilation failed. Program will not run."
fi


