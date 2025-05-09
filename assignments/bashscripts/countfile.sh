#!/bin/bash

read -p "Enter the path to the directory: " DIRECTORY

if [ ! -d "$DIRECTORY" ]; then
    echo " Error: '$DIRECTORY' is not a valid directory."
    exit 1
fi

FILE_COUNT=$(find "$DIRECTORY" -maxdepth 1 -type f | wc -l)

echo " The directory '$DIRECTORY' contains $FILE_COUNT file(s)."
