#!/bin/bash

#This script is just practice. I opened up a fresh file  and typed a way. 
#There's no order or meaning. 
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
echo -n "enter name: " ; read name
echo "$name"

echo "Goodbye, $name"
cd -- 
pwd 
clear 
