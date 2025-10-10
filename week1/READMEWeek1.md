# CMEECourseWork Week 1

## Project Name

Week 1 - Shell Scripting & LaTeX Introduction

## Brief Description

This week introduces the basics of UNIX shell scripting and LaTeX for automating tasks and preparing scientific documents. The exercises cover creating, running, and improving shell scripts for file manipulation, as well as writing and compiling LaTeX documents with bibliographies.

## Languages

* Bash Shell (sh/bash) - version depends on system
* LaTeX (via TeX Live) - version depends on installation

## Dependencies

* Bash (default on Unix/Linux/Mac)
* ImageMagick (for converting TIFF to PNG)
* TeX Live (for LaTeX compilation)

  ```bash
  sudo apt-get install texlive-full texlive-fonts-recommended texlive-pictures texlive-latex-extra imagemagick
  ```

## Installation

No specific installation needed beyond installing dependencies above. Scripts can be run directly from the terminal.

## Project Structure and Usage

```
CMEECourseWork/week1/
├── code/
│   ├── boilerplate.sh       # Example shell script demonstrating basic syntax and echo
│   ├── tabtocsv.sh          # Converts tab-delimited files to CSV
│   ├── csvtospace.sh        # Converts CSV to space-separated files
│   ├── CountLines.sh        # Counts number of lines in a file
│   ├── ConcatenateTwoFiles.sh  # Merges two files into a third file
│   ├── tiff2png.sh          # Converts .tif images to .png format
│   ├── variables.sh         # Demonstrates shell variable usage
│   ├── MyExampleScript.sh   # Basic variable and environment example
│   └── CompileLaTeX.sh      # Compiles LaTeX files with BibTeX and cleans auxiliary files
├── data/                     # Data files for exercises (CSV, temperature files, etc.)
├── sandbox/                  # Temporary/test files created during exercises
└── README.md                 # Overview of week 1 content
```

### How to run scripts

1. Make scripts executable:

```bash
chmod +x scriptname.sh
```

2. Run with Bash:

```bash
./scriptname.sh [arguments]
```

### Notes on Key Scripts

* `tabtocsv.sh`: Takes a tab-delimited file as input and outputs a CSV file.
* `csvtospace.sh`: Converts a CSV file to space-delimited format and saves as a new file.
* `CountLines.sh`: Prints the number of lines in the input file.
* `ConcatenateTwoFiles.sh`: Merges two input files into a third file.
* `tiff2png.sh`: Converts all `.tif` images in the directory to `.png` format (requires ImageMagick).
* `CompileLaTeX.sh`: Compiles a `.tex` file and its bibliography into a PDF, then cleans up auxiliary files.

## Author

Xiaoqi Wu
Email: [xiaoqi.wu22@imperial.ac.uk]

