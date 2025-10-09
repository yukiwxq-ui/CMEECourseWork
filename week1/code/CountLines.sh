#!/bin/bash
# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: CountLines.sh
# Description: Counts the number of lines in a text file.
# Usage: bash CountLines.sh <inputfile>
# Date: Oct 2025

# Old Version
# NumLines=`wc -l < $1`
# echo "The file $1 has $NumLines lines"
# echo

# Check if one argument is provided
if [ $# -ne 1 ]; then
    echo "Error: One argument expected."
    echo "Usage: bash CountLines.sh <inputfile>"
    exit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Count the number of lines
NumLines=$(wc -l < "$1")

echo "The file '$1' has $NumLines lines."
exit 0

# Test setup
# Create a small text file
#echo -e "apple\nbanana\ncherry" > fruits.txt

# Run the script
#bash CountLines.sh fruits.txt
