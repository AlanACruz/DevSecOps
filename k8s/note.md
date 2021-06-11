# Kubectl context and configuration 
kubectl config view

kubectl config get-contexts

kubectl config current-context

# Creating objects
kubectl apply -f ./my-manifest.yaml 

# Viewing, finding resources 
kubectl get services

# Deleting resources
kubectl delete pod,service baz foo


# Interacting with running Pods 
kubectl logs my-pod 

kubectl attach my-pod -i