# CMEECourseWork

## Project Overview

This repository contains coursework completed as part of the Computational Methods in Ecology and Evolution (CMEE) programme. It includes exercises, scripts, and notes developed to enhance proficiency in data analysis, coding, and scientific computing for ecological and evolutionary applications.

The repository is organised into weekly folders, each corresponding to a specific topic or skill set. Within each week, exercises are further divided into `code`, `data`, `results`, `sandbox`, and `doc` subdirectories to ensure clear and reproducible project management.

---

## Languages and Tools

* **Shell (Bash)** — for scripting and workflow automation
* **R** — for data analysis, statistical modelling, and plotting
* **Python** — for scientific computing and data manipulation
* **LaTeX** — for typesetting scientific reports

---

## Dependencies

To ensure full functionality, the following tools and packages may need to be installed:

* **Bash** (v5.0 or above)
* **R** (v4.0 or above) with packages such as `tidyverse`, `vegan`, and `ggplot2`
* **Python** (v3.8 or above) with common libraries (`numpy`, `pandas`, `matplotlib`)
* **LaTeX** (e.g., TeX Live or MiKTeX distribution)
* **ImageMagick** (for image conversion tasks)

---

## Installation

To set up the environment:

```bash
# Clone the repository
 git clone https://github.com/<your-username>/CMEECourseWork.git
 cd CMEECourseWork

# Make shell scripts executable
 chmod +x week*/code/*.sh
```

Ensure all dependencies listed above are installed via your package manager (e.g., `apt`, `brew`, or `conda`).

---

## Project Structure and Usage

Each weekly folder (e.g., `week1`, `week2`, etc.) contains the following structure:

```
CMEECourseWork/
├── README.md                 # Main repository README
├── temporary.tmp             # Temporary file
├── texput.log                # LaTeX log file
├── week1/                    # Week 1 - Shell scripting & LaTeX exercises
│   ├── README.md        # Week 1 README
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

To run scripts:

```bash
cd week1/code
bash scriptname.sh
```

For R or Python scripts, run them directly in the terminal or your preferred IDE.

---

## Author

**Name:** Xiaoqi Wu
**Email:** [your.login@imperial.ac.uk](mailto:your.login@imperial.ac.uk)
**Affiliation:** Imperial College London, CMEE Programme

---

## Notes

This repository is regularly updated with coursework exercises, code improvements, and documentation to reflect progress in computational and ecological methods.

