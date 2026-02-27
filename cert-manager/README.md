# Helm
https://cert-manager.io/docs/installation/helm/

## Pull Helm Charts
Pull charts for reference and for `values.yaml` template
```
cd ~/git/DevSecOps/cert-manager/helm

helm pull \
    oci://quay.io/jetstack/charts/cert-manager \
    --untar \
    --version v1.19.4
```

## Install Helm Local Values
Use local `values.yaml` to configure istio

```
helm install \
  cert-manager oci://quay.io/jetstack/charts/cert-manager \
  --version v1.19.4 \
  --namespace cert-manager \
  --create-namespace \
  --set crds.enabled=true \
  -f ~/git/DevSecOps/cert-manager/helm/cert-manager/values.yaml
```

## Apply Cert Issuer
```
kubectl apply -f ~/git/DevSecOps/cert-manager/k8s/cert-issuer.yaml
```