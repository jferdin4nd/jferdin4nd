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

d_file=~/download_iso
downloads=~/Downloads/
storage=~/ISO/
distro=("Debian" "Ubuntu" "Fedora" "Mint" "Clonezilla" "Kali" "Windows")

function mkFolders(){
    mkdir -p $storage
    for folder in "${distro[@]}"; do
    cd $storage
    mkdir -p "$folder"
done
}
function mvFiles(){
    cd $downloads
    for category in "${distro[@]}"; do
        readlink -f $(ls) | grep -i $category | xargs mv -t "$storage$category"
    done
}

function downloadISO(){
    cd $downloads
    echo -e "${red}Downloading ISOs......${cyan}"
    wget -b -i ~/d_iso.txt
    echo -e "${end}End"

}
mkFolders
downloadISO
mvFiles