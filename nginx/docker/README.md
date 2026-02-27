# Nginx Docker

## Hello World Cafe

### Build
```
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
```
docker run \
    -p 8081:80 \
    -d \
    hello-world-nginx-cafe-coffe

docker run \
    -p 8082:80 \
    -d \
    hello-world-nginx-cafe-hot-chocolate

docker run \
    -p 8083:80 \
    -d \
    hello-world-nginx-cafe-tea
```

### Test
http://localhost:8081
http://localhost:8082
http://localhost:8083
