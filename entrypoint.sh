#!/bin/sh -l

aws configure set aws_access_key_id $2
aws configure set aws_secret_access_key $3
aws configure set default.region $4

aws eks --region $4 update-kubeconfig --name $5

response=$(sh -c "$1")

echo "::set-output name=response::$response"