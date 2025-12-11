# Week 5 — Stats With Sparrows (SwS)

## **Brief Description**

This Week 5 folder contains learning materials, datasets, and applied R scripts for the *Stats with Sparrows* module. The week focuses on statistical modelling in R, including linear models, ANOVA, ANCOVA, mixed models, and biological data interpretation. The repository includes:

* Lecture materials
* Handouts and exercises (SwS.h01–h13)
* Biological datasets used for modelling practice
* R scripts completing SwS homework tasks
* Large sandbox datasets for applied ecological analysis (bird migration & leafcutter ants)

This week builds practical statistical skills essential for ecological data analysis.

---

## **Languages Used**

* **R (≥ 4.0)** — main programming language for analysis

---

## **Dependencies**

Most scripts use only **base R**, but modelling and plotting exercises may require:

* `tidyverse`
* `lme4`
* `nlme`
* `ggplot2`
* `MASS`

(Actual usage depends on your lecturer’s setup. If the script loads a package, install it via `install.packages()`.)

---

## **Installation**

To reproduce/execute Week 5 analyses:

1. Ensure **R** and **RStudio** (or another editor) are installed.
2. Install non‑base packages when running a script that requires them:

   ```r
   install.packages(c("tidyverse", "lme4", "nlme", "ggplot2", "MASS"))
   ```
3. Clone this repository:

   ```bash
   git clone https://github.com/<your-user>/CMEECourseWork.git
   ```
4. Navigate to Week 5:

   ```bash
   cd CMEECourseWork/week5
   ```

---

## **Project Structure and Usage**

Below is the full working directory tree for Week 5.
Only key folders (`code`, `data`, `handout`, `lecture`, and sandbox datasets) are included.

```
week5/
├── README.md
├── 2025SandBoxData/
│   ├── 2025SandBoxData/
│   │   ├── bird_migration_data/
│   │   │   ├── migration_data.csv
│   │   │   └── read_me.txt
│   │   └── LeavCutterAnts/
│   │       ├── Ant Focal Data.xlsx
│   │       └── Leaf Cutter Ant Project Summary.docx
│   └── __MACOSX/ (auto-generated Mac metadata)
│
├── code/
│   ├── week5ho1.R
│   ├── week5ho2.R
│   ├── week5ho3.R
│   ├── week5ho4.R
│   ├── week5ho5.R
│   ├── week5ho6.R
│   ├── week5ho7.R
│   ├── week5ho8.R
│   ├── week5ho9.R
│   ├── week5ho10.R
│   ├── week5ho11.R
│   ├── week5ho12.R
│   └── week5ho13.R
│
├── data/
│   ├── Aconite.csv
│   ├── BTLD.txt
│   ├── daphnia.txt
│   ├── ipomopsis.txt
│   ├── OrnamentAge.txt
│   ├── SparrowSize.txt
│   ├── timber.txt
│   └── Wylde_single.mounted.txt
│
├── handout/
│   ├── SwS.h01.pdf
│   ├── SwS.h02.pdf
│   ├── SwS.h03.pdf
│   ├── SwS.h04.pdf
│   ├── SwS.h05.pdf
│   ├── SwS.h06.pdf
│   ├── SwS.h07.pdf
│   ├── SwS.h08.pdf
│   ├── SwS.h09.pdf
│   ├── SwS.h10.pdf
│   ├── SwS.h11.pdf
│   ├── SwS.h12.pdf
│   └── SwS.h13.pdf
│
└── lecture/
    ├── StatsWithSparrows1_Lect.pptx
    ├── StatsWithSparrows2_Lect.pptx
    ├── StatsWithSparrows3_Lect.pdf
    ├── StatsWithSparrows4_Lect.pptx
    ├── StatsWithSparrows5_Lect.pptx
    ├── StatsWithSparrows6_Lect.pptx
    ├── StatsWithSparrows7_Lect.pptx
    ├── StatsWithSparrows8_Lect.pptx
    ├── StatsWithSparrows9_Lect.pptx
    ├── StatsWithSparrows10_Lect.pptx
    ├── StatsWithSparrows11a_Lect.pptx
    ├── StatsWithSparrows11b_Lect.pptx
    ├── StatsWithSparrows11c_Lect.pptx
    ├── StatsWithSparrows12_Lect.pptx
    └── StatsWithSparrows13_Lect.pptx
```

### **How to Use This Folder**

* All analytical work happens in the **code/** scripts (week5ho1–13).
* Each script corresponds to a specific exercise from the **SwS handouts**.
* Data for the exercises is available in **data/**.
* Use **lecture/** materials for conceptual understanding.
* Large real-world examples (leafcutter ants, bird migration) are in **2025SandBoxData/**.

Run scripts normally in R:

```r
source("code/week5ho3.R")
```

---

## **Author**

**Xiaoqi Wu**
MRes CMEE — Imperial College London
Contact: *yw6022@ic.ac.uk*

