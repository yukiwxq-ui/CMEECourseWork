#!/usr/bin/env python3

# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: align_seqs.py
# Description: Align two DNA sequences from an input file and save best alignment to a text file
# Usage: python align_seqs.py
# Date: Oct 2025

"""This script reads two DNA sequences from an input file, aligns them to find
the highest similarity score, and saves the best alignment and score to a text file."""

__author__ = 'Xiaoqi Wu (xiaoqi.wu22@imperial.ac.uk)'
__version__ = '0.0.2'

import csv
import sys
import os


# =============================
#  Function to calculate score
# =============================
def calculate_score(s1, s2, l1, l2, startpoint):
    """Compute alignment score starting at a given startpoint."""
    matched = ""
    score = 0
    for i in range(l2):
        if (i + startpoint) < l1:
            if s1[i + startpoint] == s2[i]:
                matched += "*"
                score += 1
            else:
                matched += "-"
    print("Alignment:\n" + matched + "\n" + s1 + "\n" + "." * startpoint + s2 + "\n")
    return score


# =============================
#  Main function
# =============================
def main(argv):
    """Main entry point of the script."""

    # ---- Step 1: Read sequences from input file ----
    input_file = "../data/DNA_seqs.csv"   # <— you can adjust path as needed
    output_file = "../results/best_alignment.txt"

    if not os.path.exists(input_file):
        print(f"Error: input file '{input_file}' not found.")
        sys.exit(1)

    with open(input_file, "r") as f:
        reader = csv.reader(f)
        seqs = [row[0].strip() for row in reader if row]  # read non-empty rows

    if len(seqs) < 2:
        print("Error: The input file must contain at least two sequences (one per line or cell).")
        sys.exit(1)

    seq1, seq2 = seqs[0], seqs[1]

    # ---- Step 2: Assign longer and shorter sequences ----
    l1, l2 = len(seq1), len(seq2)
    if l1 >= l2:
        s1, s2 = seq1, seq2
    else:
        s1, s2 = seq2, seq1
        l1, l2 = l2, l1  # swap lengths

    # ---- Step 3: Align sequences and find best score ----
    my_best_align = None
    my_best_score = -1

    for i in range(l1):
        z = calculate_score(s1, s2, l1, l2, i)
        print("Score for this alignment:", z)
        if z > my_best_score:
            my_best_align = "." * i + s2
            my_best_score = z

    # ---- Step 4: Save the results ----
    os.makedirs(os.path.dirname(output_file), exist_ok=True)
    with open(output_file, "w") as f:
        f.write("Best alignment result:\n\n")
        f.write(my_best_align + "\n")
        f.write(s1 + "\n")
        f.write(f"\nBest score: {my_best_score}\n")

    # ---- Step 5: Print summary ----
    print("Best alignment found and saved to:", output_file)
    print("Best score:", my_best_score)
    return 0


if __name__ == "__main__":
    status = main(sys.argv)
    sys.exit(status)

