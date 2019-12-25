#!/bin/bash

#This script is just practice. I opened up a fresh file  and typed a way. 
#There's no order or meaning. To practice bash scripting, I plan to open 
#this file atleast once a day and type...nothing of meaning, really. 
#By: Wali Morris

clear 
echo "Hi, what's your name"
read -r name
echo "Nice to meet you $name and welcome to random Bash"
echo "What type of fruit: "
read -r fruit
if [ $fruit = apple ]; then 
    echo "I like apples"
    else echo "Why not apples?"
fi
echo "How old are you? "
read -r age 
if [ $age -lt 20 ]; then
    echo "you're a baby!"
fi
while [ $age -lt 20 ]; do 
    echo "Age is $age"
    let age=age+1 
    echo "you're now: $age"
done
echo "My my... how the years fly!"
#A bash function to take a nap
a="1m"
echo "uh-oh, what does $a mean?"
sleepy () {
   echo "Time for a nap"
   sleep $1
   echo "Ahh, I'm rested, now where were we..."
}
sleepy $a
x=1
y=2
let z="1-2"
echo "What number am I: $z"
NOW=$(date)
LOCATION=$(pwd)
DIR=($cat ls)
echo "I'm currently in: $LOCATION"
echo "Currently, it is: $NOW"
$DIR
echo "HOME DIRECTORY FILES MONITORED ON: $NOW" > homedir_monitor.txt
echo >> homedir_monitor.txt
$DIR >> homedir_monitor.txt
echo 
echo "End --------------------------------------------" >> homedir_monitor.txt
echo "We just created a file would you like to view? [Y/n] " 
read -r homedir
if [ "$homedir" = "Y" ] || [ "$homedir" = "y" ]; then
    cat homedir_monitor.txt
    else
        echo "You didn't chose yes, default is not to view, continuing..."
fi
echo "Should we keep file? [Y/n] "
read -r answer
if [ "$answer" = "Y" ] || [ "$answer" = "y" ]; then
    echo "File stored"
    else
        rm -r homedir_monitor.txt
fi
echo -n "enter name: " ; read name
echo "$name"
echo "Goodbye, $name"
cd -- 
pwd 
clear 
