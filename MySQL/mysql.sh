#!/bin/bash

# Update system package
sudo apt update

# Install mysql server
sudo apt install mysql-server -y

# Start mysql server
sudo systemctl start mysql.service
