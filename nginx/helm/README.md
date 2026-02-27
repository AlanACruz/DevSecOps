# Helm

## Pull Helm Charts
Pull charts for reference and for `values.yaml` template
```
cd ~/git/devsecops/nginx/helm

helm pull \
    oci://ghcr.io/nginx/charts/nginx-ingress \
    --untar \
    --version 2.4.4
```

## Install Helm Local Values
Use local `values.yaml` to configure istio
```
helm install \
    nginx-ingress \
    oci://ghcr.io/nginx/charts/nginx-ingress \
    --create-namespace \
    --version 2.4.4 \
    -f ~/git/DevSecOps/nginx/helm/nginx-ingress/values.yaml

kubectl get ingressclass
```