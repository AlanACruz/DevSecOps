# Container image that runs your code
FROM bats/bats:1.2.1

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY /home/runner/work/DevSecOps/DevSecOps /code/DevSecOps

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/code/DevSecOps/bash/test/entrypoint.sh"]

CMD [ "whoami", "pwd", "ls" ]