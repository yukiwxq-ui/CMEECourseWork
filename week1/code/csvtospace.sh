#!/bin/sh
# Author: Xiaoqi Wu; xiaoqi.wu22@imperial.ac.uk
# Script: csvtospace.sh
# Description: Converts comma-separated file to space-separated file (interactive version)
# Usage: bash csvtospace.sh
# Date: Oct 2025

DEFAULT_FILE="../data/Temperatures/1800.csv"
RESULTS_DIR="../results"

echo "Please enter the CSV file name (with path if not in current directory)"
echo "(Press Enter to use default: $DEFAULT_FILE):"
read INPUTFILE

# Use default if user hits Enter
if [ -z "$INPUTFILE" ]; then
    INPUTFILE="$DEFAULT_FILE"
    echo "Using default file: $INPUTFILE"
fi

# Check file exists
if [ ! -f "$INPUTFILE" ]; then
    echo "Error: File '$INPUTFILE' not found."
    exit 1
fi

# Create results directory if not exists
mkdir -p "$RESULTS_DIR"

# Generate output filename
BASENAME="$(basename "$INPUTFILE" .csv)"
OUTFILE="$RESULTS_DIR/${BASENAME}_space.txt"

echo "Creating a space-separated version of $INPUTFILE ..."
tr ',' ' ' < "$INPUTFILE" > "$OUTFILE"

echo "Done! Output saved as $OUTFILE"
exit 0
