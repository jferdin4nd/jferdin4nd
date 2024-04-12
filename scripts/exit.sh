#!/bin/bash
package=htop
sudo apt install $package >> packege_install_results.log
if [ $? -eq 0 ]
then
    echo "The installation of $package was successfull."
    echo "The new command is avaliable here:"
    which $package
else
    echo "$package failed to install. " >> package_install_failure.log
fi    