# Dcker
# Container Lifecycle
docker run <image>: Create and start a container from an image.
docker start <container>: Start a stopped container.
docker stop <container>: Stop a running container.
docker restart <container>: Restart a container.
docker rm <container>: Remove a container.
docker ps: List running containers.
docker ps -a: List all containers (including stopped ones).
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
