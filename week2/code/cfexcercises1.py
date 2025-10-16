#!/usr/bin/env python3

# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: cfexercises1.py
# Description: Functions with multiple arguments and return values (module version)
# Usage: python cfexercises1.py
# Date: Oct 2025

"""Functions with multiple arguments and return values"""
__author__ = 'Xiaoqi Wu (xiaoqi.wu22@imperial.ac.uk)'
__version__ = '0.0.2'

import sys


def foo_1(x=4):
    """Return the square root of x"""
    return x ** 0.5


def foo_2(x=5, y=8):
    """Return the larger of x and y"""
    if x > y:
        return x
    return y


def foo_3(x=5, y=2, z=8):
    """Return the three numbers in ascending order as a list"""
    if x > y:
        x, y = y, x
    if x > z:
        x, z = z, x
    if y > z:
        y, z = z, y
    return [x, y, z]


def foo_4(x=5):
    """Calculate the factorial of x using a for loop"""
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result


def foo_5(x=5):
    """A recursive function that calculates the factorial of x"""
    if x == 1:
        return 1
    return x * foo_5(x - 1)


def foo_6(x=5):
    """Calculate the factorial of x using a while loop"""
    facto = 1
    while x >= 1:
        facto = facto * x
        x = x - 1
    return facto


def main(argv):
    """Main entry point: test all foo functions with example arguments"""
    print("Testing foo_1:", foo_1(9))
    print("Testing foo_2:", foo_2(10, 20))
    print("Testing foo_3:", foo_3(10, 5, 7))
    print("Testing foo_4:", foo_4(5))
    print("Testing foo_5:", foo_5(5))
    print("Testing foo_6:", foo_6(5))
    return 0


if __name__ == "__main__":
    status = main(sys.argv)
    sys.exit(status)
