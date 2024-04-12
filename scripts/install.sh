#!/bin/bash

#Colours
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
cyan="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"

# sudo cp /home/shiva/scripts/install.sh /usr/local/bin/install

software=(git nmap cmatrix htop pipx btop links2)

function ctrl_c(){
    echo -e "\n${yellow}[+]${end}${grey}Saliendo"
    tput cnorm; exit 0
}
function install_commands(){
    echo -e "${CYAN}>>>>> Installing package: ${green}$package ${CYAN}<<<<<${reset}"
    sudo apt update && sudo apt install -y $package
}

function check_commands(){
    for package in "${software[@]}"; do
     if  command -v $package 1>> /dev/null
    then 
        echo -e  "\n${green}$package${end} ........${green}(V)${end}\n"
        which $package
    else
    install_commands
    check_commands
    echo -e  "\n"
fi
done
}
   check_commands
   

