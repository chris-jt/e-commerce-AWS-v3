#!/bin/bash

# Update kubeconfig
aws eks get-token --cluster-name $CLUSTER_NAME | kubectl apply -f -

# Apply Kubernetes manifests
kubectl apply -f kubernetes/configmap.yaml
kubectl apply -f kubernetes/frontend.yaml
kubectl apply -f kubernetes/products.yaml
kubectl apply -f kubernetes/shopping-cart.yaml
kubectl apply -f kubernetes/merchandise.yaml
kubectl apply -f kubernetes/ingress.yaml

# Wait for deployments to be ready
kubectl rollout status deployment/frontend
kubectl rollout status deployment/products
kubectl rollout status deployment/shopping-cart
kubectl rollout status deployment/merchandise