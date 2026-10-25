#!/bin/bash
# Install Keycloak
helm repo add codecentric https://codecentric.github.io/helm-charts
helm repo update
helm install keycloak codecentric/keycloakx -n keycloak --create-namespace -f values