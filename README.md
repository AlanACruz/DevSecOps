# DevSecOps

# git clone
```
git clone git@github.com:AlanACruz/DevSecOps.git ~/git/
```

# Run Bash tests locally
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt-get install -y nodejs

npm install -g bats
   
bats ~/git/DevSecOps/bash/test
```