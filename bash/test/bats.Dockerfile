# Container image that runs your code
FROM bats/bats:1.2.1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY ~/git/DevSecOps /code/

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]