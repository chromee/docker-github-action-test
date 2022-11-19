#!/bin/sh -l

echo "Hello $1"
echo "file_path $2"
echo "field_value $3"

pwd
ls -la

time=$(date)
echo "::set-output name=time::$time"
