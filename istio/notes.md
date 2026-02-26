# Istio
https://istio.io/latest/docs/setup/getting-started/

## Install Istioctl
```
mkdir ~/istio 
&& cd ~/istio
&& curl -L https://istio.io/downloadIstio | sh -

cd ~/istio/istio-1.29.0

export PATH=$PWD/bin:$PATH
```

## Running Istio in K8 with Helm
See [DevSecOps/helm/istio/notes.md](https://github.com/AlanACruz/DevSecOps/blob/master/helm/istio/notes.md)
