# Bash Guide

## Pull Ubuntu image
```
docker pull ubuntu:latest
```

## Run Bash test from container
```
cd ~/git/DevSecOps

docker build --tag "bats-test" -f ~/git/DevSecOps/docker/bats.Dockerfile .

docker run -i -t "bats-test"
```

## Run Bats tests locally
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo bash -

sudo apt-get install -y nodejs

npm install -g bats
   
bats ~/git/DevSecOps/bash/test
```