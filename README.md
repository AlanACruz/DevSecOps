# DevSecOps

# git clone
```
git clone git@github.com:AlanACruz/DevSecOps.git ~/git/
```

# Run Bash tests locally
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt-get install -y nodejs

npm install \
   --save \
   bats \
   bats-support \
   bats-mock \
   bats-assert \
   
~/git/DevSecOps/node_modules/bats/libexec/bats --tap ~/git/DevSecOps/bash/test
```