# This script automatically sets up an Owncloud server instance.

# Create project folder
mkdir owncloud-docker-server

# Move into project folder
cd owncloud-docker-server

# Pull docker-compose.yml from GitHub repository
wget https://raw.githubusercontent.com/owncloud/docs-server/master/modules/admin_manual/examples/installation/docker/docker-compose.yml

# Create the environment configuration file
cat << EOF > .env
OWNCLOUD_VERSION=10.10
OWNCLOUD_DOMAIN=localhost:8080
ADMIN_USERNAME=admin
ADMIN_PASSWORD=admin
HTTP_PORT=8080
EOF

# Build and start the container
docker-compose up -d