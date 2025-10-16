# Week 2: Biological Computing in Python

## Brief Description

This project introduces **Python programming** for biological computing. It includes practical exercises covering input/output operations, control flow, loops, functions, and debugging. The week aims to strengthen understanding of Python syntax and modular programming principles through hands-on coding.

## Languages

* **Python 3.12+**

## Dependencies

No external dependencies are strictly required, but optional libraries for extended tasks include:

* `pytest` – for script testing
* `pandas` – for data manipulation
* `matplotlib` – for plotting and visualisation

## Installation

To set up Python and pip:

```bash
sudo apt-get update
sudo apt-get install python3 python3-pip
```

(Optional) Create and activate a virtual environment:

```bash
python3 -m venv env
source env/bin/activate
```

Install optional packages:

```bash
pip install pytest pandas matplotlib
```

## Project Structure and Usage

The **Week 2** directory contains Python exercises and data files used in biological computing tasks. Scripts are organised into functional categories such as control flow, input/output, and debugging.

### Directory Tree

```
week2/
├── code/
│   ├── align_seqs.py            # Sequence alignment exercise
│   ├── basic_csv.py             # Basic CSV file reading
│   ├── basic_io1.py             # Basic file I/O operation 1
│   ├── basic_io2.py             # Basic file I/O operation 2
│   ├── basic_io3.py             # Basic file I/O operation 3
│   ├── boilerplate              # Boilerplate text file
│   ├── boilerplate.py           # Template for shell scripts
│   ├── cfexcercises1.py         # Control flow exercises set 1
│   ├── cfexercises2.py          # Control flow exercises set 2
│   ├── control_flow.py          # Demonstrates if/else and loop logic
│   ├── dictionary.py            # Dictionary data structure exercises
│   ├── lc1.py                   # List comprehension exercise 1
│   ├── lc2.py                   # List comprehension exercise 2
│   ├── loops.py                 # Basic loop structures
│   ├── MyExampleScript.py       # Example script using variables
│   ├── oaks_debugme.py          # Debugging practice with tree data
│   ├── oaks.py                  # Extracts oak species from a list
│   ├── scope.py                 # Demonstrates variable scope
│   ├── sys                      # System-related text file
│   ├── sysargv.py               # Command-line argument usage
│   ├── tuple.py                 # Tuple operations
│   ├── using_name.py            # Demonstrates __name__ variable use
│   ├── ysargv.py var1 var2      # Misnamed or temporary sysargv test file
│   └── __pycache__/             # Compiled Python cache files
│       ├── boilerplate.cpython-312.pyc
│       └── using_name.cpython-312.pyc
│
├── data/
│   ├── bodymass.csv             # Example dataset (empty placeholder)
│   ├── DNA_seqs.csv             # DNA sequence dataset
│   ├── JustOaksData.csv         # Filtered oak species data
│   ├── testcsv.csv              # Test CSV file
│   └── TestOaksData.csv         # Sample oak data for testing
│
├── results/
│   └── best_alignment.txt       # Output result from alignment script
│
├── sandbox/
│   ├── testout.txt              # Example output text file
│   ├── testp.p                  # Pickle test file
│   └── test.txt                 # Example text file
│
└── README.md                    # (This file)
```

### How to Use

Run any Python script directly from the terminal. For example:

```bash
python3 code/align_seqs.py
```

Or import as a module:

```python
import code.dictionary as d
```

### Example: Running a Control Flow Script

```bash
python3 code/control_flow.py
```

### Example: Viewing Alignment Results

```bash
cat results/best_alignment.txt
```

## Author

**Xiaoqi Wu**
Email: [xiaoqi.wu22@imperial.ac.uk]
Imperial College London, Department of Life Sciences

