#!/bin/bash

eksctl create cluster --name=wanderlust --region=us-east-1 --without-nodegroup

eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster wanderlust --approve

eksctl create nodegroup --cluster=wanderlust --region=us-east-1 --node-type=t2.medium --nodes-min=2 --nodes-max=2 --node-volume-size=28
