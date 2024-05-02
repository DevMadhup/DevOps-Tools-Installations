#!/bin/bash

eksctl create cluster --name=wanderlust \       #Change as per your requirement
                      --region=us-east-1 \      #Change as per your requirement
                      --without-nodegroup

eksctl utils associate-iam-oidc-provider \
    --region us-east-1 \                        #Change as per your requirement
    --cluster wanderlust \                      #Change as per your requirement
    --approve

eksctl create nodegroup --cluster=wanderlust \  #Change as per your requirement
                       --region=us-east-1 \     #Change as per your requirement
                       --name=node2 \
                       --node-type=t2.medium \  #Change as per your requirement
                       --nodes=2 \              #Change as per your requirement
                       --nodes-min=2 \          #Change as per your requirement
                       --nodes-max=2 \          #Change as per your requirement
                       --node-volume-size=28 \  #Change as per your requirement
                       --ssh-access \
                       --managed \
                       --asg-access \
                       --external-dns-access \
                       --full-ecr-access \
                       --appmesh-access \
                       --alb-ingress-access
