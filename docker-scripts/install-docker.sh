#!/bin/bash

echo "Run script prepended with 'sudo' as in $ sudo bash install-docker.sh"
echo ""
echo ""
echo "Uninstalling possible existing docker versions..."
echo ""
echo ""
sudo apt-get remove --assume-yes docker docker-engine docker.io containerd runc
echo "Updating repos..."
echo ""
echo ""
sudo apt-get update
echo ""
echo ""
echo "Installing required packages..."
echo ""
echo ""
sudo apt-get install --assume-yes \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
echo ""
echo ""
echo "Adding Docker's GPG key..."
echo ""
echo ""
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo ""
echo ""
echo "Will output 'Docker Release (CE deb) if everything's ok:"
echo ""
echo ""
sudo apt-key fingerprint 0EBFCD88
echo ""
echo ""
echo "Adding Docker's repository to local repositories..."
echo ""
echo ""
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo ""
echo ""
echo "Updating local repositories & installing required packages..."
echo ""
echo ""
sudo apt-get update --assume-yes
sudo apt-get install --assume-yes docker-ce docker-ce-cli containerd.io
echo ""
echo ""
echo "Running Docker's hello-world..."
echo ""
echo ""
sudo docker run hello-world
echo ""
echo ""
if [[ (($(which docker)))]]; then
  echo "Docker successfully installed!"
  docker --version
  echo ""
  echo ""
fi
