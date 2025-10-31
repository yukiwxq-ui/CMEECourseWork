#!/bin/sh
# Author: Xiaoqi Wu; xiaoqi.wu22@imperial.ac.uk
# Script: csvtospace.sh
# Description: Converts comma-separated file to space-separated file (interactive version)
# Usage: bash csvtospace.sh
# Date: Oct 2025

# Ask user for the input file name
echo "Please enter the CSV file name (with path if not in current directory):"
read INPUTFILE

# Check if user actually entered something
if [ -z "$INPUTFILE" ]; then
    echo "Error: No input provided."
    exit 1
fi

# Check if file exists
if [ ! -f "$INPUTFILE" ]; then
    echo "Error: File '$INPUTFILE' not found."
    exit 1
fi

# Generate output filename
BASENAME="$(basename "$INPUTFILE" .csv)"
OUTFILE="${BASENAME}_space.txt"

# Convert commas to spaces
echo "Creating a space-separated version of $INPUTFILE ..."
cat "$INPUTFILE" | tr -s "," " " > "$OUTFILE"

echo "Done! Output saved as $OUTFILE"
exit 0
