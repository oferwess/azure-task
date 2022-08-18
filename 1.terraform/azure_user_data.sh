#!/bin/bash
# Install docker and git
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin git -y
sudo usermod -aG docker azureuser
sudo systemctl enable docker.service
sudo systemctl start docker.service

# Clone Git repo to local folder 
sudo mkdir /azure-task
sudo chmod 777 /azure-task
git clone https://github.com/oferwess/azure-task.git /azure-task

# Build and run docker image on host (expose using HTTPS protocol)
cd /azure-task/2.docker/nginx
docker build . -t nginx-hello:latest
docker run -it -d -p 443:443 --name nginx-app  nginx-hello:latest
done
