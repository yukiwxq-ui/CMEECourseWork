# Week 4: Advanced Biological Computing and Data Analysis in R and Python

## Brief Description

This project builds on foundational R skills from Week 3 and introduces more advanced **R programming** concepts, as well as **Python scripting** for biological data analysis. Students explore data wrangling, linear regression, plotting, permutation tests, and reproducible reporting. The exercises cover ecological datasets and statistical techniques commonly used in ecology and evolution research.

## Languages

* **R (version 4.0 or later)**
* **Python (version 3.12 or later)**

## Dependencies

Recommended R packages:

* `tidyverse`, `ggplot2`, `dplyr`, `readr`, `stringr`

Recommended Python packages:

* `numpy`, `pandas`, `matplotlib`

Install R packages:

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "stringr"))
```

Install Python packages:

```bash
pip install numpy pandas matplotlib
```

## Installation

R and RStudio installation (Ubuntu):

```bash
sudo apt-get update
sudo apt-get install r-base
```

Python installation (Ubuntu):

```bash
sudo apt-get install python3 python3-pip
```

Download RStudio IDE from [https://posit.co/download/rstudio/](https://posit.co/download/rstudio/)

## Project Structure with File Descriptions

```
Week4/
├── data/                        # Example datasets
│   ├── EcolArchives-E089-51-D1.csv       # Predator-prey dataset for exercises
│   ├── KeyWestAnnualMeanTemperature.RData # Temperature data for Florida analysis
│   ├── PoundHillData.csv                  # Experimental plant-herbivore dataset
│   ├── PoundHillMetaData.csv              # Metadata describing Pound Hill experiment
│   └── Results.txt                        # Text summary outputs from exercises
│
├── code/                        # R and Python scripts
│   ├── apply1.R                # Demonstrates use of apply() function in R
│   ├── apply2.R                # Advanced examples of apply() family usage
│   ├── browse.R                # Interactive exploration of objects and functions
│   ├── DataWrang.R             # Data cleaning and wrangling exercises
│   ├── debugme.py              # Python debugging examples
│   ├── Florida.R               # Analysis and plotting of Florida temperature data
│   ├── Girko.R                 # Generates Girko plots for matrix visualisation
│   ├── LV1.py                  # Linear algebra examples in Python
│   ├── MyBars.R                # Generates bar plots using ggplot2
│   ├── MyFirstJupyterNb.ipynb # Jupyter notebook with interactive exercises
│   ├── np                      # Placeholder or numpy-related exercise
│   ├── plotLin.R               # Plotting linear regression results
│   ├── PP_Regress.R            # Predator-prey regression analysis
│   ├── PP_Regress_test.R       # Empty file for testing regression code
│   ├── preallocate.R           # Demonstrates preallocation in R for efficiency
│   ├── profileme2.py           # Python profiling exercises
│   ├── profileme.py            # Original Python profiling examples
│   ├── Ricker.R                # Simulation of Ricker population model
│   ├── sample.R                # Sampling and randomisation examples
│   ├── test_control_flow.py    # Python control flow testing
│   ├── timeit                  # Timing script for performance tests
│   ├── timeitme.py             # Python timing examples
│   ├── TreeHeight.R            # Tree height calculation exercises
│   ├── try.R                   # Demonstrates try() error handling in R
│   ├── Vectorize1.R            # Vectorisation examples to speed up computations
│   └── (x,y):                  # Placeholder file with unspecified content
│
├── results/                     # Output files and figures
│   ├── Florida_Temp_Permutation.pdf  # Permutation test figure for Florida data
│   ├── Florida_Temp_Report.pdf       # PDF report of Florida temperature analysis
│   ├── Florida_Temp_Report.tex       # LaTeX source for Florida report
│   ├── Girko.pdf                     # Girko plot output
│   ├── MyBars.pdf                    # Bar plot output
│   ├── MyFirst-ggplot2-Figure.pdf   # Example ggplot2 figure
│   ├── MyLinReg.pdf                  # Linear regression figure
│   ├── PP_Regress.pdf                # Predator-prey regression plot
│   ├── PP_Regress_Results.csv        # Regression results in CSV format
│   ├── Pred_Prey_Overlay.pdf         # Overlay of predator-prey data
│   ├── resource_vs_consumer.png      # Plot of resource vs consumer dynamics
│   ├── time_vs_density.png           # Time series of population density
│   ├── TreeHts.csv                   # Calculated tree heights
│   └── Rplots.pdf                    # Generic R plots output
│
├── sandbox/                     # Empty folder for experimentation
│
└── README.md                    # (This file)
```

### How to Use

Run R scripts directly in R or RStudio:

```r
source("code/Florida.R")
```

Run Python scripts from the command line:

```bash
python3 code/LV1.py
```

Generate reports using R:

```bash
Rscript code/Florida.R
```

View figures and PDF outputs in the `results/` directory.

### Notes

* `sandbox/` is reserved for experimental scripts.
* Always ensure your working directory is set to `Week4/` to maintain correct relative paths.
