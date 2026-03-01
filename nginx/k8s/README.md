# Kubectl

## Cafe

### Cafe Namespace
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-ingress-namespace.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

### Cafe Ingress
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-ingress.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

### Cafe Service
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-service.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

### Cafe Deployment
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-deployment.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

## Local Test

### Add Local Routing
Add the following to your `/etc/hosts` file
```
# K8s Ingress
127.0.0.1 cafe.local
127.0.0.1 coffee.cafe.local
127.0.0.1 hot-chocolate.cafe.local
127.0.0.1 tea.cafe.local
```

### Add Port Forwarding for Local Test
Port forward the Ingress Service
> I'm using Rancher which is backed by K3s and Traefik by default
```
kubectl get service traefik --namespace kube-system

kubectl port-forward svc/traefik --namespace kube-system 9090:80
```

### Local Test Link
```
http://cafe.local:9090
```
