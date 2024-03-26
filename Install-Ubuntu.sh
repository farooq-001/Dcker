#!/bin/bash

# Update system
sudo yum update -y

# Install required packages to enable Docker repository
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify Docker installation
docker --version

# Optionally, add user to Docker group
# Replace 'your_username' with your actual username
echo "sudo usermod -aG docker your_username"

# Display message to log out and log back in for group changes to take effect
echo "Please log out and log back in for group changes to take effect."
