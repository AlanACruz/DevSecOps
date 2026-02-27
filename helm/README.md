# Helm

## Install Helm
https://helm.sh/docs/intro/install/
```
sudo apt-get install curl gpg apt-transport-https --yes

curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list

sudo apt-get update

sudo apt-get install helm
```

## Running Istio in K8 with Helm
See [DevSecOps/istio/helm/README.md](https://github.com/AlanACruz/DevSecOps/blob/master/istio/helm/README.md)

## Running Nginx with Isto Service Mesh with Helm
See [DevSecOps/nginx/helm/README.md](https://github.com/AlanACruz/DevSecOps/blob/master/nginx/helm/README.md)