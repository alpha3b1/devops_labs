#!/bin/sh

echo "Create S3"

./create.sh lab02s3 lab02_s3.yml lab02_s3_params.json

aws cloudformation wait stack-create-complete --stack-name "lab02s3"

#copy deployment file
aws s3 cp udacity.zip s3://lab02apprep

echo "Creating network"
./create.sh lab02net lab02net.yml lab02net-parameters.json

aws cloudformation wait stack-create-complete --stack-name "lab02net"

echo "creating comp. resources"

./create.sh lab02servers lab02servers.yml lab02_server_params.json

aws cloudformation wait stack-create-complete --stack-name "lab02servers"

echo "Create complete"
