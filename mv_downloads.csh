#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename or directory> <category>"
    exit 1
fi

# Define the source directory
source_dir="/path/to/source/directory"

# Define the destination directory based on the category
destination_dir="/path/to/destination/directory/$2"

# Check if the source file or directory exists
if [ ! -e "$source_dir/$1" ]; then
    echo "File or directory does not exist in the source directory"
    exit 1
fi

# Move or copy the file(s) to the destination directory
if [ "$1" = "*" ]; then
    cp -r "$source_dir/*" "$destination_dir/"
    echo "All files copied successfully to $destination_dir"
else
    mv "$source_dir/$1" "$destination_dir/"
    echo "File or directory moved successfully to $destination_dir"
fi

