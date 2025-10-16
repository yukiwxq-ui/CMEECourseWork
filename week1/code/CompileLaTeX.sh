#!/bin/bash
# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: CompileLaTeX.sh
# Description: Compiles a LaTeX document and opens the resulting PDF
# Usage: bash CompileLaTeX.sh <filename.tex>
# Date: Oct 2025

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: bash CompileLaTeX.sh <filename.tex>"
  exit 1
fi

# Extract the filename without extension
FILENAME=$(basename "$1" .tex)

# Compile LaTeX document
pdflatex "$FILENAME.tex"
bibtex "$FILENAME"
pdflatex "$FILENAME.tex"
pdflatex "$FILENAME.tex"

# Open the PDF
evince "$FILENAME.pdf" &

# Cleanup auxiliary files
rm -f *.aux *.log *.bbl *.blg
