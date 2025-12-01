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

## Project Structure and Usage

The **Week 4** directory contains scripts, datasets, and results demonstrating advanced biological computing and data analysis workflows.

### Directory Tree

```
Week4/
├── data/                        # Example datasets
│   ├── EcolArchives-E089-51-D1.csv
│   ├── KeyWestAnnualMeanTemperature.RData
│   ├── PoundHillData.csv
│   ├── PoundHillMetaData.csv
│   └── Results.txt
│
├── code/                        # R and Python scripts
│   ├── apply1.R
│   ├── apply2.R
│   ├── browse.R
│   ├── DataWrang.R
│   ├── debugme.py
│   ├── Florida.R
│   ├── Girko.R
│   ├── LV1.py
│   ├── MyBars.R
│   ├── MyFirstJupyterNb.ipynb
│   ├── np
│   ├── plotLin.R
│   ├── PP_Regress.R
│   ├── PP_Regress_test.R
│   ├── preallocate.R
│   ├── profileme2.py
│   ├── profileme.py
│   ├── Ricker.R
│   ├── sample.R
│   ├── test_control_flow.py
│   ├── timeit
│   ├── timeitme.py
│   ├── TreeHeight.R
│   ├── try.R
│   ├── Vectorize1.R
│   └── (x,y):
│
├── results/                     # Output files and figures
│   ├── Florida_Temp_Permutation.pdf
│   ├── Florida_Temp_Report.pdf
│   ├── Florida_Temp_Report.tex
│   ├── Girko.pdf
│   ├── MyBars.pdf
│   ├── MyFirst-ggplot2-Figure.pdf
│   ├── MyLinReg.pdf
│   ├── PP_Regress.pdf
│   ├── PP_Regress_Results.csv
│   ├── Pred_Prey_Overlay.pdf
│   ├── resource_vs_consumer.png
│   ├── time_vs_density.png
│   ├── TreeHts.csv
│   └── Rplots.pdf
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
* `PP_Regress_test.R` is currently empty and can be used for testing regression scripts.
* Always ensure your working directory is set to `Week4/` to maintain correct relative paths.
