#!/bin/bash

# A script to begin a Python Virtual Environment on Ubuntu 18.04
# If need be, install python3-venv on machine. If this step is 
# skipped it'll be assumed all dependencies are up-to-date. 
# NOTE: This script should be run by source: . ./build_venv.sh
# By: Wali Morris 

printf "WARNING: Continuing with next line will install python3-venv\n"
printf "Do you need to install python3-venv on this machine? [Y/n] " 
read -r install
if [ "$install" = "y" ] || [ "$install" = "Y" ]; then 
    printf "Python 3.6 ships with Unbuntu 18.04 by default\n"
    py_version=$(python3 -V)
    printf "Your system's version: $py_version"
    echo
    sudo apt install python3-venv
fi 

# If python3-venv does not need to be install skip to this point
printf "Project virtual enviroments will be stored on the Desktop as default.\n"
printf "What should we call your project?"
read -r project_name
printf "What should we name the directory?"
read -r directory_name
cd Desktop
mkdir $directory_name
cd $directory_name
python3 -m venv $project_name-env
printf "Project Created!\n"
printf "Once project is activated it'll be added to $PATH variable\n"
printf "Should we begin the process of activating and starting project?"
read -r begin
if [ "$begin" = "y" ] || [ "$begin" = "Y" ]; then 
    clear 
    source $project_name-env/bin/activate 
    pip3 install requests
    clear
    printf "You're all set. Enviroment is activated!\n"
    else
        printf "All set!\n" 
fi
