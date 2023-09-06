#!/bin/bash


# A script to install and configure some common software packages on Ubuntu

# Update the package lists
sudo apt update

# Installing git, curl, wget, and vim
sudo apt install -y git curl wget vim

# Install Python 3 and pip
sudo apt install -y python3 python3-pip

# Install some Python packages using pip
pip3 install --upgrade pip
pip3 install numpy pandas matplotlib requests

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs

# Install some Node.js packages using npm
npm install -g express nodemon

# Install Docker and Docker Compose
sudo apt install -y docker.io docker-compose

# Add the user to the docker group
sudo usermod -aG docker $USER

# Enable and start the docker service
sudo systemctl enable docker
sudo systemctl start docker

# Print a confirmation message that script is done
echo "Done!!! system is ready for use."
