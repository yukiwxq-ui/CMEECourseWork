# Week 1 Coursework

## Project Title
**Introduction to Shell Scripting, LaTeX, and Reproducible Workflows**

---

## Brief Description
This project introduces essential computational and scripting skills for scientific and ecological data analysis workflows.  
It covers four main components:

1. **Shell Scripting** — foundational use of Unix shell commands and scripting (`.sh`), including automating file operations and basic text transformations.  
2. **Data Processing with Shell** — scripts for manipulating tabular data (e.g., converting `.tab` to `.csv`, merging files, counting lines).  
3. **Image Conversion Automation** — converting `.tif` images to `.png` format using loops and command substitution.  
4. **LaTeX Compilation Automation** — using a shell script to automate the build process of `.tex` documents into `.pdf`, ensuring all references and bibliographies are correctly compiled.

These exercises build reproducible research workflows and help automate repetitive tasks.  
For background, see:  
[LaTeX Project](https://www.latex-project.org/) | [ImageMagick Documentation](https://imagemagick.org/) | [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)

---

## Languages
- **Shell (Bash / sh)** — tested on GNU bash, version 5.2.21(1)
- **LaTeX** — tested with TeX Live distribution
- **BibTeX** — for reference management in LaTeX

---

## Dependencies
Some scripts require external tools:
| Dependency | Purpose | Installation (Ubuntu/Debian) |
|-------------|----------|-------------------------------|
| `bash` | Unix shell interpreter | Default on most systems |
| `ImageMagick` (`convert` command) | For image format conversion (`.tif → .png`) | `sudo apt install imagemagick` |
| `pdflatex` | Compiles LaTeX documents | `sudo apt install texlive-latex-base` |
| `bibtex` | Handles bibliography references | Included with `texlive-latex-extra` |

---

## Installation
No installation is required for the scripts themselves.  
Ensure that the dependencies above are installed.

You can test scripts by running:
```bash
bash scriptname.sh [arguments]
```

Example:

bash CountLines.sh test.txt

## Project Structure and Usage

week1/
├── code/
│   ├── boilerplate.sh            # Simple template for shell scripts
│   ├── variables.sh              # Demonstrates variable use and user input
│   ├── tiff2png.sh               # Converts .tif files to .png
│   ├── tabtocsv.sh               # Converts tab-delimited files to .csv
│   ├── ConcatenateTwoFiles.sh    # Merges two files into a third
│   ├── CountLines.sh             # Counts lines in a text file
│   ├── CompileLaTeX.sh           # Automates LaTeX document compilation
│   └── test_scripts/             # Test files and examples for verification
│
├── data/                         # Example or input data files
│   └── (various .txt / .tab files)
│
├── results/                      # Output files (e.g., merged files, csvs, pdfs)
│
├── sandbox/                      # Temporary working directory for experimentation
│   └── test.txt                  # Example test file
│
└── doc/
    ├── FirstExample.tex          # Example LaTeX file
    ├── FirstExample.bib          # Example BibTeX bibliography
    ├── FirstExample.pdf          # Generated PDF after compilation
    └── README.md                 # This documentation file

## Key Scripts
Script	Function
boilerplate.sh	Template script header with author, date, and purpose
variables.sh	Demonstrates use of shell variables and user input
tabtocsv.sh	Replaces tab characters with commas to generate .csv files
CountLines.sh	Counts and prints number of lines in a file
ConcatenateTwoFiles.sh	Concatenates two files into a single output file
tiff2png.sh	Converts all .tif images in directory to .png format
CompileLaTeX.sh	Automates pdflatex and bibtex compilation workflow

## Author

Name: Xiaoqi Wu
Contact: xiaoqi.wu22@imperial.ac.uk
Institution: Imperial College London
Course: CMEECourseWork — Week 1

## Notes

    Run all scripts from within the code/ directory for correct relative paths.

    All scripts are executable and tested on Ubuntu 24.04 LTS with Bash 5.2.

    Ensure proper permissions if running scripts:

    chmod +x scriptname.sh

This project is part of the Computational Methods in Ecology and Evolution coursework at Imperial College London.
