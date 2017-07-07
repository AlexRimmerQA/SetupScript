#!/usr/bin/env bash

#Basic update
sudo apt-get update

#Install Git
sudo apt-get install -qq -y git

#Install Docker
sudo wget -pO- https://get.docker.com/ | sh
sudo service docker restart
sudo usermod -aG docker ubuntu

#Install Jenkins
sudo docker pull jenkins
sudo docker run -d --name jenkins_instance -p 8080:8080 jenkins
