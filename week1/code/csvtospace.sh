#!/bin/sh
# Author: Xiaoqi Wu; xiaoqi.wu22@imperial.ac.uk
# Script: csvtospace.sh
# Description: Converts comma-separated file to space-separated file
# Usage: bash csvto space.sh <inputfile.csv>
# Date: Oct 2025

# Check number of arguments
if [ $# -ne 1 ]; then
    echo "Error; One argument expected."
    echo "Usage: bash csvtospace.sh <inputfile.csv>"
    excit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# Generate output filename
# Replace .csv with _space.txt if exists, else append _space.txt
BASENAME="$(basename "$1" .csv)"
OUTFILE="${BASENAME}_space.txt"

# Convert commas to spaces
echo "Creating a space-separated version of $1 ..."
cat "$1" | tr -s "," " " > "$OUTFILE"

echo "Done! Output saved as $OUTFILE"
exit 0

