# Istio 
https://istio.io/latest/docs/setup/install/helm/

## Config Helm
```
helm repo add istio https://istio-release.storage.googleapis.com/charts

helm repo update
```

## Pull Charts
Pull charts for reference and for `values.yaml` template
```
cd ~/git/devsecops/helm/istio

helm pull istio/base -d ~/git/DevSecOps/helm/istio --untar

helm pull istio/istiod -d ~/git/DevSecOps/helm/istio --untar
```

## Install Local Values
Use local `values.yaml` to configure istio, using non-local chart
```
helm install istio-base istio/base -n istio-system --set defaultRevision=default --create-namespace -f ~/git/DevSecOps/helm/istio/base/values.yaml

helm install istiod istio/istiod -n istio-system --wait -f ~/git/DevSecOps/helm/istio/istiod/values.yaml
```
