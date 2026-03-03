# Docker

## Install Docker

### Docker.io
https://wiki.debian.org/Docker
```
sudo apt install docker.io

sudo usermod -aG docker $USER

sudo chmod 666 /var/run/docker.sock
```

### Instal Docker on Chromebook
See [DevSecOps/docker/Install-Docker-On-Chromebook.md](https://github.com/AlanACruz/DevSecOps/blob/master/docker/Install-Docker-On-Chromebook.md)

## Docker Examples

### Build Nginx Docker Containers
See [DevSecOps/nginx/docker/README.md](https://github.com/AlanACruz/DevSecOps/blob/master/nginx/docker/README.md)

## Docker Commands

### Build/Save Commands
```
docker build --tag ... -file ...
docker save --output "....tar" myimage:latest
```

### Tag & Push Commands
```
docker tag
docker push
```
