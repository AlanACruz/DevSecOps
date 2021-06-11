# Container image that runs your code
FROM bats/bats:1.2.1

# Copies your code file from your action repository to the filesystem path `/` of the container
ADD ../ /root/git/DevSecOps

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["~/git/DevSecOps/docker/bats.Entrypoint"]