# CMEECourseWork

## Brief Description

This repository contains coursework for the **Computational Methods in Ecology and Evolution (CMEE)** programme. It includes weekly modules that build foundational skills in programming, data handling, statistical modelling, and reproducible research. Each week focuses on a specific computational language or technique, progressing from shell scripting to Python, R, GLMs, and mixed modelling tools.

## Languages

* **Bash/Shell (Week 1)**
* **Python 3.12+ (Week 2)**
* **R 4.0+ (Week 3)**
* **Python & R (Week 4)**
* **R (Week 5: Linear Models & Mixed Models)**
* **R (Week 6: Generalised Linear Models / GLMs)**

## Dependencies

### General (Week 1)

* A Unix-based terminal (Linux/macOS recommended)
* Git for version control

### Python (Week 2 & Week 4)

* Optional libraries:

  * `pytest`
  * `pandas`
  * `matplotlib`
  * `numpy`

### R (Week 3, 5, 6)

Common packages:

* `tidyverse`
* `ggplot2`
* `dplyr`
* `readr`
* `stringr`

#### Week 5 (Linear & Mixed Models)

* `lme4`
* `nlme`
* `MASS`
* `car`

#### Week 6 (Generalised Linear Models)

* `MASS`
* `lme4`
* `boot`
* `DHARMa`

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
install.packages(c(
  "tidyverse", "ggplot2", "dplyr", "readr", "stringr",
  "lme4", "nlme", "MASS", "car", "DHARMa"
))
```

### Install Python packages

```bash
pip install numpy pandas matplotlib
```

## Project Structure and Usage

The repository is organised by week, each containing **code**, **data**, **results**, and **sandbox** directories. These support progressive learning and application of computational tools in biological research.

### Directory Tree

```
CMEECourseWork/
├── week1/
│   ├── code/                  # Shell scripting exercises
│   ├── data/                  # Datasets for shell tasks
│   ├── results/               # Script outputs
│   └── sandbox/               # Testing and drafts
│
├── week2/
│   ├── code/                  # Python scripts (I/O, debugging, alignment)
│   ├── data/                  # CSV and text data
│   ├── results/               # Sequence alignment results
│   └── sandbox/               # Experimentation space
│
├── week3/
│   ├── code/                  # R scripts (data handling, visualisation)
│   ├── data/                  # Input files for R
│   ├── results/               # Plots and processed outputs
│   └── sandbox/               # Extra work and drafts
│
├── week4/
│   ├── code/                  # Advanced Python & R analyses
│   ├── data/                  # Ecological datasets
│   ├── results/               # Figures and processed data
│   └── sandbox/               # Experimental scripts
│
├── week5/
│   ├── code/                  # R scripts for LM, ANOVA, LMMs
│   ├── data/                  # CSV/TXT data for model fitting
│   ├── handout/               # PDFs for linear/mixed models
│   ├── lecture/               # Lecture slide decks
│   └── 2025SandBoxData/       # Additional datasets (bird migration, ants)
│
├── week6/
│   ├── code/                  # R scripts for GLMs (Poisson, binomial, NB)
│   ├── data/                  # GLM datasets (bees, chytrid, fisheries, etc.)
│   ├── handout/               # GLM handouts & Zuur (2010) protocol
│   └── lecture/               # GLM lecture slides
│
└── README.md                  # Main repository README
```

## How to Use

Run scripts by navigating into the correct week and executing with Python or R.

### Python example

```bash
cd week2/code
python3 align_seqs.py
```

### R example

```bash
cd week3/code
Rscript control_flow.R
```

### Git usage example

```bash
git add .
git commit -m "Updated Week 6 GLM scripts"
git push origin main
```

## Author

**Xiaoqi Wu**
Email: [xiaoqi.wu@imperial.ac.uk](mailto:xiaoqi.wu@imperial.ac.uk)
Imperial College London, Department of Life Sciences
