#!/bin/bash

#Update Ubuntu OS
sudo apt update

#Add JFrog Artifactory APT repository
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs xenial main" | sudo tee -a /etc/apt/sources.list.d/artifactory.list

#Import repository GPG key by running the following commands
curl -fsSL  https://releases.jfrog.io/artifactory/api/gpg/key/public|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/artifactory.gpg

#Update the package
sudo apt update

#Install Artifactory
sudo apt install jfrog-artifactory-oss -y

#Start Artifactory 
sudo systemctl start artifactory.service
#Create symbolic link
sudo systemctl enable artifactory.service

#sudo apt update -y
#sudo apt install default-jdk -y
#sudo wget -qO - https://releases.jfrog.io/artifactory/api/security/keypair/default-gpg-key/public?_gl=1*1auztq7*_ga*NjQ5NzUxODE2LjE3MDA4MjMxNjI.*_ga_SQ1NR9VTFJ*MTcwMDgyMzE2Mi4xLjEuMTcwMDgyNjIxNC4wLjAuMA..*_fplc*JTJGQ2gxaFYyY2czJTJCJTJGU2hVN3lrNjJyN25URGdKMmlmeEt3U1diJTJCYkIyMGtiMlZQQzVrN0ZvJTJGUmgwMHpaeEc3ODF6MGNOTnNJV1VkbmxqciUyRnlETVZXemtta04zRnJBc04xSWVqbVNNa29mVjRld2s3R3lka29FYjh6aDc1NXVRJTNEJTNE | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://jfrog.bintray.com/artifactory-debs $(lsb_release -cs) main"
#sudo apt-get update
#sudo apt install jfrog-artifactory-oss -y
#sudo systemctl start artifactory.service
#sudo systemctl status artifactory.service
