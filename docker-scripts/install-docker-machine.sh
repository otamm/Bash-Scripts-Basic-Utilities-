#!/bin/bash

DOCKER_MACHINE_VERSION="0.16.0"
echo ""
echo ""
echo "Installing docker-machine. Please prepend command with sudo such as $ sudo bash install-docker-machine.sh"
echo "Installing docker-machine (version $DOCKER_MACHINE_VERSION). This does not need docker previously installed in order to work."
base=https://github.com/docker/machine/releases/download/v$DOCKER_MACHINE_VERSION &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine

if [[ (($(which docker-machine)))]]; then
  echo "docker-machine successfully installed & given execution permissions!";
else
  echo "Installation error!"
  exit 1;
fi
echo "Successfully installed docker-machine." # Installing docker-machine completion scripts..."
