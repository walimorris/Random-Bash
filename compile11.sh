#! /bin/bash

# A shortcut to compile c++11 files with <filename>-a appended to the end.
# No error messages indicate an error-free compile for c++11 program file.
# Feel free to change the compiled file format to whatever suits you. 
# Wali Morris 

echo input the name of your program with .cpp appended to the end 
read program 
echo compiling $program directed-for cpp11
g++ $program -o $program-a -std=c++11
