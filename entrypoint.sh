#!/bin/sh -l

aws configure set aws_access_key_id $2
aws configure set aws_secret_access_key $3
aws configure set default.region $4

response=$(aws eks list-clusters)

echo "::set-output name=response::$response"