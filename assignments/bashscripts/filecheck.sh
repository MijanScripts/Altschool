#!/bin/bash

# Ask for the filename
read -p "Enter the filename: " FILENAME

# Ask for the directory to search in
read -p "Enter the directory to search in: " DIRECTORY

# Combine directory and filename into a full path
FILEPATH="$DIRECTORY/$FILENAME"

# Check if the directory exists first
if [ ! -d "$DIRECTORY" ]; then
    echo " Error: Directory '$DIRECTORY' does not exist. maybe check your spelling"
    exit 1
fi

# Check if the file exists in the given directory
if [ -f "$FILEPATH" ]; then
    echo " File '$FILENAME' exists in '$DIRECTORY'."
else
    echo " Error: File '$FILENAME' does not exist in directory '$DIRECTORY'.maybe check your spelling"
    exit 1
fi
