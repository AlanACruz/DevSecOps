# DevSecOps

## git clone
```
git clone git@github.com:AlanACruz/DevSecOps.git ~/git/DevSecOps
```
## Bash Guide
[~/git/DevSecOps/bash/note.md](https://github.com/AlanACruz/DevSecOps/tree/master/bash/note.md)

## Powershell Guide
[~/git/DevSecOps/ps1/note.md](https://github.com/AlanACruz/DevSecOps/tree/master/ps1/note.md)

# Run Bats test from container
```
cd ~/git/DevSecOps

docker build --tag "bats-test" -f ~/git/DevSecOps/docker/bats.Dockerfile .

docker run -i -t "bats-test"
```

# Run Bats tests locally
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo bash -

sudo apt-get install -y nodejs

npm install -g bats
   
bats ~/git/DevSecOps/bash/test
```
