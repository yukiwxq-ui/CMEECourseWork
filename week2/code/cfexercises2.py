#!/usr/bin/env python3

# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: cfexcercises2.py
# Description: Functions with multiple arguments and return values
# Usage: python cfexcercises2.py
# Date: Oct 2025

########################
def hello_1(x):
    for j in range(x):
        if j % 3 == 0: # if j is divisible by 3
            print('hello')
    print(' ')

hello_1(12)

########################
def hello_2(x): 
    for j in range(x):
        if j % 5 == 3: # if the remainder when j is divided by 5 is 3
            print('hello')
        elif j % 4 == 3: # if the remainder when j is divided by 4 is 3
            print('hello')
    print(' ')

hello_2(12)

########################
def hello_3(x, y): # print 'hello' for every number from x to y-1
    for i in range(x, y):
        print('hello')
    print(' ')

hello_3(3, 17)

########################
def hello_4(x):
    while x != 15: # while x is not equal to 15
        print('hello')
        x = x + 3
    print(' ')

hello_4(0)

########################
def hello_5(x):
    while x < 100:
        if x == 31: # if x is equal to 31
            for k in range(7): # print 'hello' 7 times
                print('hello')
        elif x == 18: # if x is equal to 18
            print('hello')
        x = x + 1
    print(' ')

hello_5(12)

# WHILE loop with BREAK
def hello_6(x, y):
    while x: # while x is True # this is an infinite loop unless we break out of it
        print("hello! " + str(y)) # print hello and the value of y
        y += 1 # increment y by 1 
        if y == 6:
            break
    print(' ')

hello_6 (True, 0)