# Author: Xiaoqi Wu, xiaoqi.wu22@imperial.ac.uk
# Script: scope.py
# Description: Demonstrate variable scope in Python
# Usage: python scope.py
# Date: Oct 2025

_a_global = 10 # a global variable

if _a_global >= 5:
    _b_global = _a_global + 5 # also a global variable


print("Before calling a_function, outside the function, the value of _a_global is", _a_global)
print("Before calling a_function, outside the function, the value of _b_global is", _b_global)

def a_function():
    _a_global = 4 # a local variable
    
    if _a_global >= 4:
        _b_global = _a_global + 5 # also a local variable
    
    _a_local = 3
    
    print("Inside the function, the value of _a_global is", _a_global)
    print("Inside the function, the value of _b_global is", _b_global)
    print("Inside the function, the value of _a_local is", _a_local)


a_function()


print("After calling a_function, outside the function, the value of _a_global is (still)", _a_global)
print("After calling a_function, outside the function, the value of _b_global is (still)", _b_global)
print("After calling a_function, outside the function, the value of _a_local is ", _a_local)








def a_function():
    _a_global = 10
    def _a_function2():
        global _a_global
        _a_global = 20
    print("Before calling a_function2, value of _a_global is", _a_global)
    _a_function2()
    print("After calling a_function2, value of _a_global is", _a_global)

a_function()

print("The value of _a_global in main workspace / namespace now is", _a_global)



_a_global = 10

def a_function():
    def _a_function2():
        global _a_global
        _a_global = 20
    print("Before calling a_function2, value of _a_global is", _a_global)
    _a_function2()
    print("After calling a_function2, value of _a_global is", _a_global)

a_function()

print("The value of a_global in main workspace / namespace is", _a_global)
