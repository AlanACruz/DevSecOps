gcloud init

# Register the gcloud tool as a Docker credential helper.
gcloud auth configure-docker

# Create a cluster to run GKE containers.
gcloud container clusters create

# List clusters for running GKE containers.
gcloud container clusters list

# Update kubeconfig to get kubectl to use a GKE cluster.
gcloud container clusters get-credentials

# List tag and digest metadata for a container image.
gcloud container images list-tags