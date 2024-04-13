#!/bin/bash

myname="Jorge Luis"
myage=33
word="awesome"
date=$(date)
mynum1=100
mynum2=200
total=$(expr $mynum1 \* $mynum2)

if [ $mynum1 -eq 200 ]
then
    echo "The condition is true, the number is 200."
else 
    echo "The variable doesn't equal 200"
fi

if [ ! $mynum1 -eq 100 ]
then
    echo "The condition is false, the number is not equal 100."
else 
    echo "The number is equal 100."
fi

if [ -f ~/myfile ]
then 
    echo "The file exist."
else
    echo "The file doesn't exitst."
fi 


echo "Hello my name is $myname."
echo "I'm $myage years old."
echo "Linux is $word"
echo "The system date and time is $date"
echo "Your username is: $USER"
echo "Total: $total"
