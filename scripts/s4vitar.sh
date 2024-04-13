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

export DEBIAN_FRONTEND=noninteractive

trap ctrl_c INT

function ctrl_c(){
    echo -e "\n${yellow}[+]${end}${grey}Saliendo"
    tput cnorm; exit 0
}

function helpPanel(){
    echo -e "\n${yellow}[+]${end}${grey} Uso ./s4vitar.sh${end}\n"
    echo -e "\t${purple}a)${end}${grey} Modo de ataque${end}"
    echo -e "\t\t${red}Hanshake${end}"
    echo -e "\t\t${red}PWMID${end}"
    echo -e "\t${purple}n)${end}${grey} Nombre de la tarjeta de red.${end}"
    exit 0
}

function dependencies (){
    tput civis
    clear; dependencies=(aircrack-ng macchanger)

    echo -e "${yellow}[+]${end}${grey}Comprobando programas necesarios....${end}"
    sleep 2

    for program in "${dependencies[@]}"; do
        echo -ne "\n${yellow}[+]${end}${blue} Herramientas${end}${purple} $program ${end} ${blue} ... ${end}"
   
        test -f /usr/bin/$program
        
        if [ "$(echo $?)" == "0" ]; then
            echo -e "${green}(V)${end}"
        else
            echo -e "${red}(X)${end}"
            echo -e "${yellow}[+]${end}${grey}Instalando herramienta${end}${blue} $program ${end}\n"
            apt-get install -y $program
        fi;sleep 1
    done
}

function startAttack(){
    clear
    echo -e "${yellow}[^]${end} Configurando tarjeta de red...."
}

#Main function

if [ "$(id -u)" == "0" ]; then
    declare -i parameter_counter=0; while getopts ":a:b:h:" arg; do
        case $arg in
            a) attack_mode=$OPTARG; let parameter_counter+=1 ;;
            n) networkCard=$OPTARG; let parameter_counter+=1 ;;
            h) helpPanel;;
        esac
    done
    if [ $parameter_counter -ne 2 ]; then
        dependencies
    else
        dependencies
        startAttack
        tput cnorm
    fi
else
    echo -e "\n${red}No soy root.${end}\n"
fi