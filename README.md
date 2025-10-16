# CMEECourseWork

## Brief Description

This repository contains coursework for the **Computational Methods in Ecology and Evolution (CMEE)** programme. It includes weekly modules that build foundational skills in programming, data handling, and reproducible research. Each week focuses on a specific computational language or technique, progressing from shell scripting to Python and R.

## Languages

* **Bash/Shell (Week 1)**
* **Python 3.12+ (Week 2)**
* **R 4.0+ (Week 3)**

## Dependencies

### General (Week 1)

* A Unix-based terminal (Linux/macOS recommended)
* Git for version control

### Python (Week 2)

* Optional libraries: `pytest`, `pandas`, `matplotlib`

### R (Week 3)

* Packages: `tidyverse`, `ggplot2`, `dplyr`, `readr`, `stringr`

## Installation

### Set up environment

```bash
sudo apt-get update
sudo apt-get install python3 python3-pip r-base git
```

### (Optional) Create a Python virtual environment

```bash
python3 -m venv env
source env/bin/activate
```

### Install R packages

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "stringr"))
```

## Project Structure and Usage

The repository is organised by week, each containing **code**, **data**, **results**, and **sandbox** directories. These support progressive learning and application of computational tools in biological research.

### Directory Tree

```
CMEECourseWork/
├── week1/
│   ├── code/                  # Shell scripting exercises
│   ├── data/                  # Example datasets for shell tasks
│   ├── results/               # Output from shell scripts
│   └── sandbox/               # Testing and drafts
│
├── week2/
│   ├── code/                  # Python exercises (control flow, debugging, I/O)
│   ├── data/                  # Data files used by Python scripts
│   ├── results/               # Results such as alignment outputs
│   └── sandbox/               # Experimental/test Python scripts
│
├── week3/
│   ├── code/                  # R exercises (data handling, plotting, stats)
│   ├── data/                  # R data files for analysis
│   ├── results/               # Output plots and processed data
│   └── sandbox/               # Practice or experimental R scripts
│
└── README.md                  # (This file)
```

### How to Use

Navigate into a weekly folder and run the relevant scripts:

```bash
cd week2/code
python3 align_seqs.py
```

Or, for R:

```bash
cd week3/code
Rscript control_flow.R
```

### Example: Git Usage

Commit progress regularly and push updates to your remote repository:

```bash
git add .
git commit -m "Updated Week 2 exercises"
git push origin main
```

## Author

**Xiaoqi Wu**
Email: [your.login@imperial.ac.uk](mailto:your.login@imperial.ac.uk)
Imperial College London, Department of Life Sciences

