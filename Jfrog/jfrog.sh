#!/bin/bash

sudo apt update -y
sudo apt install default-jdk -y

sudo wget -qO - https://releases.jfrog.io/artifactory/api/security/keypair/default-gpg-key/public?_gl=1*1auztq7*_ga*NjQ5NzUxODE2LjE3MDA4MjMxNjI.*_ga_SQ1NR9VTFJ*MTcwMDgyMzE2Mi4xLjEuMTcwMDgyNjIxNC4wLjAuMA..*_fplc*JTJGQ2gxaFYyY2czJTJCJTJGU2hVN3lrNjJyN25URGdKMmlmeEt3U1diJTJCYkIyMGtiMlZQQzVrN0ZvJTJGUmgwMHpaeEc3ODF6MGNOTnNJV1VkbmxqciUyRnlETVZXemtta04zRnJBc04xSWVqbVNNa29mVjRld2s3R3lka29FYjh6aDc1NXVRJTNEJTNE | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://jfrog.bintray.com/artifactory-debs $(lsb_release -cs) main"
sudo apt-get update
sudo apt install jfrog-artifactory-oss -y
sudo systemctl start artifactory.service
sudo systemctl status artifactory.service
