#!/bin/bash

echo -e "\n\n Installing all docker-related packages...\n\n"

sudo bash install-docker.sh
sudo bash install-compose.sh
sudo bash install-docker-machine.sh