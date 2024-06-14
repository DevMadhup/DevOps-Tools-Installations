#!/bin/bash

sudo apt update

sudo apt install python3 -y

python3 --version

sudo apt install python3-pip -y

sudo apt install python3-boto3 -y

python3 -c "import boto3; print(boto3.__version__)"
