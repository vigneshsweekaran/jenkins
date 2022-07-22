#!/bin/bash

set -xe

# Install java jre 11
sudo apt update -y
sudo apt install -y openjdk-11-jre
java -version

# Install jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins

# Install docker
sudo apt install docker.io

# Start Jenkins
sudo service jenkins start
sudo service jenkins status
