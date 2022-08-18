#!/bin/bash
# Install docker
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
sudo usermod -aG docker azureuser
sudo systemctl enable docker.service
sudo systemctl start docker.service

#create nginx folder and content
sudo mkdir /nginx
sudo mkdir /nginx/app
sudo echo "
FROM nginx-base:latest
COPY ./app/index.html /usr/share/nginx/html/index.html" > /nginx/dockerfile
sudo echo "
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Docker Nginx</title>
</head>
<body>
  <h2>Hello from Nginx container</h2>
</body>
</html>" > /nginx/app/index.html