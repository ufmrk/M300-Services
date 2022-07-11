# This script automatically sets up an Owncloud server instance.

# Create project folder
mkdir owncloud-docker-server

# Move into project folder
cd owncloud-docker-server

# Pull docker-compose.yml from ufmrk GitHub repository
wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/docker-compose.yml

# Pull the environment configuration file from ufmrk GitHub repository
wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/.env

# Build and start the container
docker-compose up -d