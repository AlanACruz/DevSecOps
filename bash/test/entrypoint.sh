#!/bin/sh -l

bats ~/git/DevSecOps/bash/test

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"