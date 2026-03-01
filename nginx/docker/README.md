# Nginx Docker

## Hello World Cafe

### Build
```
cd ~/git/DevSecOps/nginx/docker/cafe-home/
docker build \
    -t hello-world-nginx-cafe-home \
    .

cd ~/git/DevSecOps/nginx/docker/cafe-coffee/
docker build \
    -t hello-world-nginx-cafe-coffe \
    .

cd ~/git/DevSecOps/nginx/docker/cafe-hot-chocolate/
docker build \
    -t hello-world-nginx-cafe-hot-chocolate \
    .

cd ~/git/DevSecOps/nginx/docker/cafe-tea/
docker build \
    -t hello-world-nginx-cafe-tea \
    .
```

### Run
> Don't use these commands if using K8s
```
docker run \
    -p 9091:80 \
    -d \
    hello-world-nginx-cafe-tea

docker run \
    -p 9092:80 \
    -d \
    hello-world-nginx-cafe-coffe

docker run \
    -p 9093:80 \
    -d \
    hello-world-nginx-cafe-hot-chocolate

docker run \
    -p 9094:80 \
    -d \
    hello-world-nginx-cafe-tea
```

### Test
> Don't use these links if using K8s
http://localhost:9091
http://localhost:9092
http://localhost:9093
http://localhost:9094
