#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index again
sudo apt-get update

# Install the latest version of Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Verify that Docker is installed correctly
sudo docker run hello-world

# Add your user to the Docker group
sudo usermod -aG docker $USER

echo "Docker has been installed. Please log out and log back in to use Docker without sudo."
