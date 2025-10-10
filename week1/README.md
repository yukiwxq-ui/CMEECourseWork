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

```
CMEECourseWork/
├── README.md                 # Main repository README
├── temporary.tmp             # Temporary file
├── week1/                    # Week 1 - Shell scripting & LaTeX exercises
│   ├── README.md             # Week 1 README
│   ├── code/                 # Shell scripts and LaTeX examples
│   │   ├── boilerplate.sh
│   │   ├── CompileLaTeX.sh
│   │   ├── ConcatenateTwoFiles.sh
│   │   ├── CountLines.sh
│   │   ├── csvtospace.sh
│   │   ├── FirstBiblio.bib
│   │   ├── FirstExample.tex
│   │   ├── MyExamplesScript.sh
│   │   ├── myscript.sh
│   │   ├── tabtocsv.sh
│   │   ├── tiff2png.sh
│   │   ├── UnixPrac1.txt
│   │   └── variables.sh
│   ├── data/                 # Data files for exercises
│   │   ├── spawannxs.txt
│   │   ├── fasta/
│   │   │   ├── 407228326.fasta
│   │   │   ├── 407228412.fasta
│   │   │   └── E.coli.fasta
│   │   └── Temperatures/
│   │       ├── 1800.csv
│   │       ├── 1801.csv
│   │       ├── 1802.csv
│   │       └── 1803.csv
│   ├── results/              # Output files (currently empty)
│   └── sandbox/              # Testing and practice area
│       ├── test.txt
│       ├── test.txt.csv
│       ├── test_ignore.txt
│       ├── TestFind/
│       │   ├── Dir1/
│       │   │   ├── Dir11/
│       │   │   │   └── Dir111/
│       │   │   │       └── File111.txt
│       │   │   ├── File1.csv
│       │   │   ├── File1.tex
│       │   │   └── File1.txt
│       │   ├── Dir2/
│       │   │   ├── file2.csv
│       │   │   ├── File2.tex
│       │   │   └── File2.txt
│       │   ├── Dir3/
│       │   │   └── File3.txt
│       │   └── TestFind/ (nested test folder)
│       │       ├── Dir1/
│       │       │   ├── Dir11/
│       │       │   │   └── Dir111/
│       │       │   │       └── File111.txt
│       │       │   ├── File1.csv
│       │       │   ├── File1.tex
│       │       │   └── File1.txt
│       │       ├── Dir2/
│       │       │   ├── file2.csv
│       │       │   ├── File2.tex
│       │       │   └── File2.txt
│       │       └── Dir3/
│       │           └── File3.txt
│       └── TestWild/
│           ├── Anotherfile.csv
│           ├── Anotherfile.txt
│           ├── File1.csv
│           ├── File1.txt
│           ├── File2.csv
│           ├── File2.txt
│           ├── File3.csv
│           ├── File3.txt
│           ├── File4.csv
│           └── File4.txt
└── week2/
    └── README.md             # Week 2 README
```

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
