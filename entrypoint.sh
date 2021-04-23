#!/bin/sh -l

aws configure set aws_access_key_id $access_key
aws configure set aws_secret_access_key $secret_key
aws configure set default.region $region

response=$(aws eks list-clusters)

echo "::set-output name=response::$response"