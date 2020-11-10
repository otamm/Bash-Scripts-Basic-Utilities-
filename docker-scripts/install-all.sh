#!/bin/bash

echo -e "\n\n Installing all docker-related packages...\n\n"

sudo bash "$(pwd)/docker-scripts/install-docker.sh"
sudo bash "$(pwd)/docker-scripts/install-docker-compose.sh"
sudo bash "$(pwd)/docker-scripts/install-docker-machine.sh"