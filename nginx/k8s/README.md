# Kubectl

## Istio Ingress Namespace
```
kubectl apply -f ~/git/DevSecOps/nginx/k8s/nginx-ingress-namespace.yaml

kubectl get namespaces -A --show-labels
```

## Nginx Ingress Controller
```
kubectl label namespace nginx-ingress istio-injection=enabled

kubectl get namespaces -A --show-labels

kubectl apply -f ~/git/DevSecOps/nginx/k8s/nginx-plus-ingress.yaml 
```

## Nginx Service Mesh
```
kubectl apply -f ~/git/DevSecOps/nginx/k8s/cafe-virtual-server.yaml 

kubectl get pods -A
```