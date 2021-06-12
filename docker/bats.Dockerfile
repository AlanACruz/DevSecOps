#FROM bats/bats:1.2.1

#ADD . /root/git/DevSecOps

#ENTRYPOINT ["/root/git/DevSecOps/docker/bats.Entrypoint"]

FROM ubuntu:latest

RUN apt-get update; \
    apt-get install -y curl; \
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash -; \
    apt-get install -y nodejs; \
    npm install -g bats;

ADD . /root/git/DevSecOps

ENTRYPOINT ["/root/git/DevSecOps/docker/bats.Entrypoint"]