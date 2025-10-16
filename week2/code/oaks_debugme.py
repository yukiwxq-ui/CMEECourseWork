#!/usr/bin/env python3

# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: oaks_debugme.py
# Description: Identify oak species from CSV and save them to a new file
# Usage: python3 oaks_debugme.py
# Date: Oct 2025

import csv # module for reading and writing CSV files
import sys # module for system-specific parameters and functions

def is_an_oak(name): # check if a species is an oak
    """ 
    Returns True if the genus starts with 'quercus' (case-insensitive).
    Handles minor typos like an extra 's'.

    >>> is_an_oak('Quercus robur')
    True
    >>> is_an_oak('quercus petraea')
    True
    >>> is_an_oak('Quercuss cerris')
    True
    >>> is_an_oak('Fagus sylvatica')
    False
    >>> is_an_oak('Pinus sylvestris')
    False
    >>> is_an_oak('Querc')
    False
    """
    name = name.strip().lower() # clean up the input
    return name.startswith('quercus') # check if it starts with 'quercus'


def main(argv): # main function
    input_file = '../data/TestOaksData.csv'
    output_file = '../data/JustOaksData.csv'

    # Open input and output using context managers (auto-close)
    with open(input_file, 'r') as f, open(output_file, 'w', newline='') as g: # ensure newline='' for CSV writing
        taxa = csv.reader(f)
        csvwrite = csv.writer(g)

        for row in taxa:
            if not row:  # skip empty rows
                continue
            print(row)
            print("The genus is:")
            print(row[0] + '\n')
            if is_an_oak(row[0]):
                print('FOUND AN OAK!\n')
                csvwrite.writerow([row[0], row[1]])

    print(f"Finished! Oaks saved to '{output_file}'")
    return 0


if __name__ == "__main__": # only run this if script is executed, not imported  
    import doctest
    doctest.testmod()
    status = main(sys.argv)
