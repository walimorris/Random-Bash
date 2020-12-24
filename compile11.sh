#! /bin/bash

# A shortcut to compile c++11 files with <filename>-a appended to the end
# Wali Morris 

echo type the name of your program with .cpp appended to the end 
read program 
echo compiling $program for cpp11
g++ $program -o $program-a -std=c++11
