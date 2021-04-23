#!/bin/sh -l

echo "Hello $1"

ls -la

time=$(date)
echo "::set-output name=time::$time"