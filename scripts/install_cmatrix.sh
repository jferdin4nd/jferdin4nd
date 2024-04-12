#!/bin/bash

command=cmatrix

if  command -v $ command
then 
    echo "$command is avaliable let's run the command."
else
    echo "$command is not avaliable, installing it"
    sudo apt update && sudo apt install -y $command
fi

$command