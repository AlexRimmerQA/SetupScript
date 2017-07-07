#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -qq -y git
sudo wget -pO- https://get.docker.com/ | sh
sudo service docker restart

