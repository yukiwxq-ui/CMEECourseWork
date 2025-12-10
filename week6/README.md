# Week 6: Generalised Linear Models (GLMs)

## Brief Description

Week 6 focuses on **Generalised Linear Models (GLMs)** using R. This module introduces the logic behind GLMs, how they extend linear models to non-normal error structures, and how to apply GLMs to real biological datasets. Practical exercises include binomial, Poisson, and Gaussian GLMs, model diagnostics, overdispersion handling, and interpretation of outputs.

This week also includes substantial handouts and lecture materials from *Stats with Sparrows*, along with many biological datasets for hands-on modelling.

## Languages

* **R (4.0+)**

## Dependencies

### R Packages Used

Although base R can run many GLMs, the following packages are commonly used in Week 6:

* `tidyverse`
* `ggplot2`
* `dplyr`
* `readr`
* `lme4` (for comparisons with GLMMs)
* `MASS` (for negative binomial models)

## Installation

### Install R and required packages

```r
install.packages(c("tidyverse", "ggplot2", "dplyr", "readr", "MASS", "lme4"))
```

## Project Structure and Usage

The Week 6 directory contains the following subfolders:

* **code** – R scripts for GLM exercises
* **data** – datasets for modelling (bees, fisheries, chytrid infection, roadkill, unicorn datasets, etc.)
* **handout** – GLM handouts and the Zuur 2010 protocol for data exploration
* **lecture** – PDF lecture slides covering GLM theory and examples

### Directory Tree

```
week6/
├── code/
│   ├── temp_clean.txt
│   ├── week6glm1.R
│   ├── week6glm2.R
│   ├── week6glm3.R
│   ├── week6glm4.R
│   ├── week6glm5.R
│   └── week6glm6.R
│
├── data/
│   ├── bee_mites.csv
│   ├── chytrid.csv
│   ├── chytrid_binomial.csv
│   ├── data.txt
│   ├── fisheries.csv
│   ├── gala.txt
│   ├── ObserverRepeatability.txt
│   ├── parkgrass_ms.csv
│   ├── RoadKills.txt
│   ├── RUnicorns.txt
│   ├── SparrowSize.txt
│   ├── Three-way-Unicorn.txt
│   └── workerbees.csv
│
├── handout/
│   ├── GLMs.ho1.docx
│   ├── GLMs.ho2.docx
│   ├── GLMs.ho03.pdf
│   ├── GLMs.ho04.pdf
│   ├── GLMs.ho5(1).pdf
│   ├── GLMs.ho6.docx
│   ├── GLMs.ho6.pdf
│   └── Methods Ecol Evol - 2010 - Zuur (data exploration).pdf
│
├── lecture/
│   ├── GLMs_Lect1.pdf
│   ├── GLMs_Lect2.pdf
│   ├── GLMS_Lect3.pdf
│   ├── GLMs_Lect4.pdf
│   ├── GLMs_Lect5.pdf
│   ├── GLMs_Lect6.pdf
│   ├── GLMs_Lect7.pdf
│   └── maths.docx
│
└── README.md
```

## How to Run the Scripts

Navigate into the `code` directory and run any GLM script using:

```bash
Rscript week6glm1.R
```

Scripts include:

* **week6glm1.R** – Introduction to GLM structure and Gaussian GLMs
* **week6glm2.R** – Binomial GLMs (presence/absence, success/failure)
* **week6glm3.R** – Poisson GLMs (counts) and overdispersion detection
* **week6glm4.R** – Quasi-Poisson and Negative Binomial models
* **week6glm5.R** – Model diagnostics & assumptions
* **week6glm6.R** – Multi‑predictor GLMs & inference

## Author

**Xiaoqi Wu**
Imperial College London
Email: [xiaoqi.wu22@imperial.ac.uk]
