#!/bin/sh -l

echo "=================args================="

echo "Hello $1"
echo "file_path $2"
echo "field_value $3"

echo "=================ls -la================="

pwd
ls -la
ls -la /App

echo "=================dotnet================="

dotnet /App/UnityPackgeUpdater.dll $1 $2 $3

echo "=================time================="

time=$(date)
echo "::set-output name=time::$time"
