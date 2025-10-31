#!/bin/sh
# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: variables.sh
# Description: Illustrates the use of variables with input validation and defaults
# Usage: bash variables.sh
# Date: Oct 2025

echo "This script was called with $# parameters"
echo "The script's name is $0"
echo "The arguments are $@"
echo "The first argument is $1"
echo "The second argument is $2"

# Default string
MY_VAR='some string' 
echo "The current value of the variable is: $MY_VAR"
echo
echo "Please enter a new string (press Enter to keep default: '$MY_VAR'):"
read USER_INPUT

# Use default if empty
if [ -n "$USER_INPUT" ]; then
    MY_VAR="$USER_INPUT"
fi

echo
echo "The current value of the variable is: $MY_VAR"
echo

# ==== Numbers section ====

DEFAULT_A=5
DEFAULT_B=10

echo "Enter two numbers separated by space(s)"
echo "(Press Enter to use defaults: $DEFAULT_A and $DEFAULT_B):"
read a b
echo

# Assign defaults if user hits Enter
if [ -z "$a" ] && [ -z "$b" ]; then
    a=$DEFAULT_A
    b=$DEFAULT_B
    echo "Using default values: $a and $b"
fi

# Validate integers (only if user typed something)
if ! echo "$a" | grep -Eq '^[0-9]+$' || ! echo "$b" | grep -Eq '^[0-9]+$'; then
    echo "Error: Please enter valid integers!"
    exit 1
fi

echo "You entered $a and $b; Their sum is:"
MY_SUM=$(expr $a + $b)
echo "$MY_SUM"
