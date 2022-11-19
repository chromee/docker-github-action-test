#!/bin/sh -l

echo "=================args================="

echo "Hello $1"
echo "file_path $2"
echo "field_value $3"

echo "=================ls -la================="

pwd
ls -la

echo "=================dotnet================="

dotnet csproj/bin/Release/net6.0/DotNet.Docker.dll 5

echo "=================time================="

time=$(date)
echo "::set-output name=time::$time"
