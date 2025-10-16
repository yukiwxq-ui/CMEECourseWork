# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: basic_io2.py
# Description: Save a list to a file
# Usage: python basic_io2.py
# Date: Oct 2025

#############################
# FILE OUTPUT
#############################
# Save the elements of a list to a file
list_to_save = range(100)

f = open('../sandbox/testout.txt','w')
for i in list_to_save:
    f.write(str(i) + '\n') ## Add a new line at the end


f.close()