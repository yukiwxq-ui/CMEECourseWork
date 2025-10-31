#!/bin/sh
# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: variables.sh
# Description: Illustrates the use of variables with input validation
# Usage: bash variables.sh
# Date: Oct 2025

echo "This script was called with $# parameters"
echo "The script's name is $0"
echo "The arguments are $@"
echo "The first argument is $1"
echo "The second argument is $2"

MY_VAR='some string' 
echo "The current value of the variable is: $MY_VAR"
echo
echo "Please enter a new string:"
read MY_VAR
echo
echo "The current value of the variable is: $MY_VAR"
echo

echo "Enter two numbers separated by space(s):"
read a b
echo

# Check if both inputs are non-empty
if [ -z "$a" ] || [ -z "$b" ]; then
    echo "Error: You must enter two numbers!"
    exit 1
fi

# Check if both are numbers using a regex
if ! echo "$a" | grep -Eq '^[0-9]+$' || ! echo "$b" | grep -Eq '^[0-9]+$'; then
    echo "Error: Please enter valid integers!"
    exit 1
fi

echo "You entered $a and $b; Their sum is:"
MY_SUM=$(expr $a + $b)
echo "$MY_SUM"
