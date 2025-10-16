# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: basic_io3.py
# Description: Basic file storing objects in Python
# Usage: python basic_io3.py
# Date: Oct 2025


#############################
# STORING OBJECTS
#############################
# to store more complex objects such as lists or dictionaries, we can use the pickle module
my_dictionary = {"a key": 10, "another key": 11} 

import pickle #built-in pickle module, which can convert Python objects into a binary format

f = open('../sandbox/testp.p','wb') ## note the b: accept binary files
pickle.dump(my_dictionary, f) #saves the dictionary’s structure and content in binary form
f.close()

## Load the data again
f = open('../sandbox/testp.p','rb')
another_dictionary = pickle.load(f) #“Unpickles” (deserialises) the binary data and restores it as a normal Python dictionary called another_dictionary.
f.close()

print(another_dictionary)
