#!/bin/bash

echo "Run script prepended with 'sudo' as in $ sudo bash install-docker-compose.sh"
if [[ !(($(which docker)))]]; then
  echo "Docker not found locally."
  echo "Install it with:"
  echo "$ sudo bash install-docker.sh"
  echo ""
  echo "Terminating script execution."
  exit 1;
fi

#if [[ !(($(which pip3)))]]; then
#  echo "pip3 not found locally."
#  echo "Install it with:"
#  echo "$ sudo apt-get -y install python3-pip"
#  echo ""
#  echo "Terminating script execution."
#  exit 1;
#fi
echo "Removing current docker-compose install, if existent..."
echo ""
echo ""
sudo rm /usr/local/bin/docker-compose
echo ""
echo ""
echo "Installing docker-compose at /usr/local/bin ..."
echo ""
echo ""
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo ""
echo ""
echo "Adding execution permissions to docker-compose binary..."
echo ""
echo ""
sudo chmod +x /usr/local/bin/docker-compose
echo ""
echo ""
echo "Creating symbolic links..."
echo ""
echo ""
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo ""
echo ""
if [[ (($(which docker-compose)))]]; then
  echo "docker-compose successfully installed!"
fi