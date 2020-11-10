#!/bin/bash

echo -e "\n\nInstalling all packages listed at https://github.com/otamm/Bash-Scripts-Basic-Utilities-...\n\n"
echo -e "\nRemember to prepend this command with sudo such as $ sudo bash install-all.sh\n\n"
for dir in */
do
    dir=${dir%*/}      # remove the trailing "/"
    sudo bash "$dir/install-all.sh"
done