# Dcker
# Dockerfile
A Dockerfile is a text file that contains instructions for building a Docker image. It provides a simple and efficient way to automate the creation of Docker images by specifying the environment, dependencies, and commands needed to run an application or service within a container.

# Dockerfile Basics:
Here are some hand notes for creating and building Docker images using a Dockerfile:
Base Image: Start with a base image suitable for your application (e.g., Ubuntu, CentOS, Alpine).
Instructions: Write instructions in the Dockerfile to specify the environment and setup requirements.
Commands: Use Dockerfile commands like FROM, RUN, COPY, ADD, CMD, ENTRYPOINT, EXPOSE, and WORKDIR.
Layered: Each instruction in the Dockerfile creates a layer in the image, allowing for efficient caching and reusability.
Build Context: Dockerfile is used along with a build context (directory containing the Dockerfile and any other necessary files).

# Example Dockerfile:
1 Use a base image
FROM ubuntu:latest

2 Set working directory
WORKDIR /app

3 Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*
    
4 Copy application files
COPY . /app

5 Expose port
EXPOSE 8080

6 Define default command to run when container starts
CMD ["python3", "app.py"]

# Building an Image:
Build Command: Use the docker build command to build an image from a Dockerfile.
Syntax: docker build -t <image_name> <path_to_Dockerfile>
Example: docker build -t myapp .

# Running a Container from the Image:
Run Command: Use the docker run command to create and start a container from an image.
Syntax: docker run -d -p <host_port>:<container_port> <image_name>
Example: docker run -d -p 8080:8080 myapp

# Container Lifecycle
docker run <image>: Create and start a container from an image.
docker start <container>: Start a stopped container.
docker stop <container>: Stop a running container.
docker restart <container>: Restart a container.
docker rm <container>: Remove a container.
docker ps: List running containers.
docker ps -a: List all containers (including stopped ones).

# docker login
docker login <username> <password>

# Images
docker pull <image>: Pull an image from a registry.
docker images: List downloaded images.
docker rmi <image>: Remove an image.
Logs and Exec
docker logs <container>: View logs of a container.
docker exec -it <container> <command>: Run a command inside a running container.
# Networks
docker network ls: List networks.
docker network inspect <network>: Inspect a network.
docker network create <name>: Create a network.
docker network connect <network> <container>: Connect a container to a network.
# Volumes
docker volume ls: List volumes.
docker volume create <name>: Create a volume.
docker volume inspect <volume>: Inspect a volume.
docker volume rm <volume>: Remove a volume.
Docker Compose (for multi-container applications)
docker-compose up: Create and start containers defined in the docker-compose.yml file.
docker-compose down: Stop and remove containers defined in the docker-compose.yml file.
# Miscellaneous
docker info: Display Docker system-wide information.
docker version: Show Docker version information.
docker inspect <container/image>: Return low-level information about a container or image.
docker login: Log in to a Docker registry.
docker logout: Log out from a Docker registry.
This is a basic list and does not cover all Docker commands and options. You can use docker --help or docker <command> --help for more detailed information on specific commands.
