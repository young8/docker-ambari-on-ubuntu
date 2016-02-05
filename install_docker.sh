#!/bin/bash

echo "Installing Docker..."
wget -qO- https://get.docker.com/ | sh
docker run hello-world
groupadd docker
gpasswd -a vagrant docker
service docker restart
newgrp docker
echo "Installing Docker-Compose..."
apt-get -y install python-pip
pip install docker-compose
