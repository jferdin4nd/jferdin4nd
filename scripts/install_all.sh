#!/bin/bash

CYAN='\033[1;36m'
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

software=("git" "nmap" "cmatrix" "htop" "zsh" "ncdu" "nnn" "btop" "at" "rsync" "links2")

for package in "${software[@]}"; do
    if  command -v $package 1>> /dev/null
then 
    echo "${green}$package${reset} is avaliable"
    # which $package
else
    echo -e "${CYAN}>>>>> Installing package: ${green}$package ${CYAN}<<<<<${reset}"
    sudo apt update && sudo apt install -y $package
fi
done
