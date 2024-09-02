#!/bin/bash

# Build and push frontend
docker build -t $ECR_REGISTRY/frontend:$GITHUB_SHA ./src/frontend
docker push $ECR_REGISTRY/frontend:$GITHUB_SHA

# Build and push products
docker build -t $ECR_REGISTRY/products:$GITHUB_SHA ./src/products
docker push $ECR_REGISTRY/products:$GITHUB_SHA

# Build and push shopping-cart
docker build -t $ECR_REGISTRY/shopping-cart:$GITHUB_SHA ./src/shopping-cart
docker push $ECR_REGISTRY/shopping-cart:$GITHUB_SHA

# Build and push merchandise
docker build -t $ECR_REGISTRY/merchandise:$GITHUB_SHA ./src/merchandise
docker push $ECR_REGISTRY/merchandise:$GITHUB_SHA