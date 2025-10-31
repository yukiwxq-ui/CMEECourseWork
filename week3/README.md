# Week 3: Biological Computing in R

## Brief Description

This project introduces the use of **R programming** for biological data analysis. It covers key concepts such as vectors, data frames, loops, conditionals, and plotting. Students learn to apply R to analyse biological datasets, visualise results, and write reproducible scripts. This week builds foundational R skills that are essential for data handling and statistical computing in ecology, evolution, and conservation.

## Languages

* **R (version 4.0 or later)**

## Dependencies

The following R packages are recommended for running all exercises:

* `tidyverse` – collection of packages for data manipulation and visualisation
* `ggplot2` – for advanced plotting
* `dplyr` – for data wrangling
* `readr` – for reading and writing data files
* `stringr` – for string manipulation

To install them, run:

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "stringr"))
```

## Installation

R and RStudio can be installed using the following commands on Ubuntu:

```bash
sudo apt-get update
sudo apt-get install r-base
```

Alternatively, download RStudio IDE from: [https://posit.co/download/rstudio/](https://posit.co/download/rstudio/)

## Project Structure and Usage

The **Week 3** directory contains all R scripts, datasets, and practical exercises for biological computing in R. Scripts are organised by topic to help you explore key programming and analytical skills progressively.

### Directory Tree

```
Week3/
├── data/                        # Example datasets for exercises
│   ├── trees.csv
│   ├── results.csv
│   └── example_data.txt
│
├── code/                        # R scripts for the week
│   ├── basics.R                 # Basic R syntax, variables, data types
│   ├── control_flow.R           # Loops, conditionals, and logic operations
│   ├── data_structures.R        # Working with vectors, lists, and data frames
│   ├── apply_family.R           # Using apply, lapply, sapply, etc.
│   ├── plotting_basics.R        # Simple visualisation using base R and ggplot2
│   ├── writing_functions.R      # Defining and using custom functions
│   ├── vectorisation.R          # Speeding up code with vectorised operations
│   ├── regular_expressions.R    # Using regex for text manipulation
│   ├── csv_io.R                 # Reading/writing csv and txt files
│   ├── stats_examples.R         # Examples of descriptive statistics
│   └── sandbox/                 # Experimental scripts
│       ├── test_snippets.R
│       └── plot_practice.R
│
├── results/                     # Output files and visualisations
│   ├── summary_stats.txt
│   ├── plots/
│   │   ├── histogram_example.png
│   │   └── scatterplot_example.png
│   └── output_data.csv
│
├── README.md                    # (This file)
└── __init__.R                   # Marks folder as R module (optional)
```

### How to Use

Run scripts directly in R or RStudio:

```r
source("code/basics.R")
```

Or open an interactive R session:

```r
setwd("~/Documents/CMEECourseWork/Week3/")
source("code/data_structures.R")
```

### Example: Generating Plots

```r
Rscript code/plotting_basics.R
```

This will generate figures saved automatically in the `results/plots/` directory.

### Example: Running Scripts from Command Line

```bash
Rscript code/control_flow.R
```

### Example: Using Custom Functions

```r
source("code/writing_functions.R")
my_function(data)
```

## Author

**Xiaoqi Wu**
Email: [xiaoqi.wu22@imperial.ac.uk]
Imperial College London, Department of Life Sciences

