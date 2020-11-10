#!/bin/bash

echo -e "\n\n Installing all packages listed at https://github.com/otamm/Bash-Scripts-Basic-Utilities-...\n\n"
echo -e "\nRemember to prepend this command with sudo such as $ sudo bash install-all.sh\n\n"
for INSTALL_ALL_SCRIPT in */install-all.sh
do
    sudo bash $INSTALL_ALL_SCRIPT
done