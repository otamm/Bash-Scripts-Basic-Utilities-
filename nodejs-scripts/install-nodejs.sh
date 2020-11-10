#!/bin/bash

echo -e "Please run script prepended with sudo such as $ sudo bash install-nodejs.sh"
printf "\n\nUpdating local repository...\n\n"
sudo apt update -y
printf "\n\nInstalling nodejs...\n\n"
sudo apt install nodejs -y
printf "\n\nInstalling npm...\n\n"
sudo apt install npm -y
printf "\n\n"
if  [[(($(which nodejs)))]]; then
  echo -e "\nNodejs successfully installed!\n" #echo -e allows formatting such as \n as a new line
  nodejs -v
fi

if  [[(($(which npm)))]]; then
  echo -e "\nNpm successfully installed!\n"
  npm -v
fi 
