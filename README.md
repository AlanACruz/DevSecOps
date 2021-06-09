# DevSecOps

# git clone
```
git clone git@github.com:AlanACruz/DevSecOps.git ~/git/
```

# install docker
```
sudo apt update

sudo apt install -y \
   apt-transport-https \
   ca-certificates \
   curl \
   gnupg2 \
   software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
   
sudo apt update

sudo apt install -y \
   docker-ce \
   docker-ce-cli \
   containerd.io
```

# Enable non-root docker (Chromebook)
```
sudo usermod -aG docker $USER

sudo chmod 666 /var/run/docker.sock
```

# Pull NodeJS image
```
docker pull node:current
```

# Run Node build from container
```
docker build \
    -t js-prototypes \
    ~/git/JavaScript-Prototypes

docker run \
    -i \
    -t \
    --rm \
    --name js-prototypes \
    js-prototypes
```

# Run Node build locally
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt-get install -y nodejs

npm install \
   --save \
   mocha \
   chai \
   fs \
   request \
   express \
   forever 

npm starts

npm test

npm stop
```

# Browser Access
From browser -> localhost:3000