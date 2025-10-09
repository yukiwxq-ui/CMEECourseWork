#!/bin/sh
# Author: Xiaoqi Wu; xiaoqi.wu22@imperial.ac.uk
# Script: tabtocsv.sh
# Description: substitute the tabs in the files with commas
#
# Saves the output into a .csv file
# Arguments: 1 -> tab delimited file
# Date: Oct 2025

# Old Version:
# echo "Creating a comma delimited version of $1 ..."
# cat $1 | tr -s "\t" "," >> $1.csv
# echo "Done!"
# exit

# Improved Version
# Check if input file is provided
if [ $# -ne 1 ]; then
    echo "Error: One argument expected."
    echo "Usage: bash tabtocsv.sh <inputfile>"
    exit 1
fi

# Check if the input file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Generate output filename
OUTFILE="$(basename "$1" .txt).csv"

echo "Creating a comma delimited version of $1 ..."
cat "$1" | tr -s "\t" "," > "$OUTFILE"
echo "Done! File saved as $OUTFILE"
exit 0

