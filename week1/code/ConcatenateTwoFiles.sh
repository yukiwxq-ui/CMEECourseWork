#!/bin/bash
# Author: Xiaoqi Wu; xiaoqi.wu22@imperial.ac.uk
# Script: ConcatenateTwoFiles.sh
# Description: Concatenates two files and saves into a new one
# Usage: bash ConcatenateTwoFiles.sh <file1> <file2> <outputfile>
# Date: Oct 2025

# Old Version
# cat $1 > $3
# cat $2 >> $3
# echo "Merged File is"
# cat $3

# Check if three arguments are provided
if [ $# -ne 3 ]; then
    echo "Error: Three arguments required."
    echo "Usage: bash ConcatenateTwoFiles.sh <file1> <file2> <outputfile>"
    exit 1
fi

# Check if the input files exist
if [ ! -f "$1" ] || [ ! -f "$2" ]; then
    echo "Error: One or both input files not found."
    exit 1
fi

# Concatenate files
cat "$1" > "$3"
cat "$2" >> "$3"
echo "Merged File saved as $3"
exit 0

# Test setup
# Create two small text files
# echo -e "apple\nbanana" > file1.txt
# echo -e "cherry\ndate" > file2.txt

# Run the script
# bash ConcatenateTwoFiles.sh file1.txt file2.txt merged.txt

# Check the merged file
# cat merged.txt
