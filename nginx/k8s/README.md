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

### Cafe Virtual Server
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-virtual-server.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

### Cafe Deploy Pods
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-virtual-server.yaml

kubectl get namespaces \
    -A \
    --show-labels
```

## Nginx Service Mesh

### Nginx Ingress Controller
```
kubectl label \
    namespace nginx-ingress \
    istio-injection=enabled

kubectl get namespaces \
    -A \
    --show-labels

kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/nginx-plus-ingress.yaml 
```

### Nginx Service Mesh
```
kubectl apply \
    -f ~/git/DevSecOps/nginx/k8s/cafe-virtual-server.yaml 

kubectl get pods \
    -A
```
