#!/bin/bash
# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: tiff2png.sh
# Description: Converts all .tif files in the current directory to .png format.
# Usage: bash tiff2png.sh
# Date: Oct 2025

# Old version
# for f in *.tif; 
    # do  
        # echo "Converting $f"; 
        # convert "$f"  "$(basename "$f" .tif).png"; 
    # done

# Check if ImageMagick 'convert' command is available
if ! command -v convert &> /dev/null; then
    echo "Error: ImageMagick is not installed. Please install it using:"
    echo "sudo apt install imagemagick"
    exit 1
fi

# Check if any .tif files exist 
shopt -s nullglob
tif_files=(*.tif)

if [ ${#tif_files[@]} -eq 0 ]; then
    echo "No .tif files found in the current directory."
    exit 1
fi

# Convert each .tif to .png 
for f in "${tif_files[@]}"; do
    echo "Converting $f ..."
    convert "$f" "$(basename "$f" .tif).png"
done

echo "All .tif files have been converted to .png format."
exit 0