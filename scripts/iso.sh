#!/bin/bash

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

    wget -f 
}
mkFolders
mvFiles