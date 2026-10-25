#!/bin/bash
# Install Traefik API Gateway
# Note: metalLB must be installed before this, as Traefik will request a LoadBalancer IP
helm repo add traefik https://traefik.github.io/charts
helm repo update
helm upgrade --install traefik traefik/traefik \
  -n traefik --create-namespace \
  -f values.yaml --skip-crds