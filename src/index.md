---
layout: home
title: Home
---

# Welcome to DevOps Command Hub! 🚀

Your comprehensive guide to DevOps tools, commands, and best practices. This site features interactive command blocks with one-click copying and expandable sections for advanced topics.

## Quick Start Commands

Get up and running with these essential commands:

{% include command-block.html 
   id="docker-hello" 
   title="Docker Hello World" 
   command="docker run hello-world" 
   description="Test your Docker installation with this simple command." %}

{% include command-block.html 
   id="git-status" 
   title="Check Git Repository Status" 
   command="git status
git log --oneline -10" 
   description="Check the current status of your Git repository and view the last 10 commits." %}

## Essential DevOps Tools

### Container Management

{% include command-block.html 
   id="docker-basics" 
   title="Docker Container Lifecycle" 
   expandable=true
   command="# List all containers
docker ps -a

# Build an image
docker build -t myapp:latest .

# Run a container with port mapping
docker run -d -p 8080:80 --name myapp-container myapp:latest

# View container logs
docker logs myapp-container

# Stop and remove container
docker stop myapp-container
docker rm myapp-container" 
   description="Complete Docker container lifecycle management commands. These cover the most common Docker operations you'll need." %}

### Kubernetes Operations

{% include command-block.html 
   id="kubectl-basics" 
   title="Kubernetes Cluster Management" 
   expandable=true
   command="# Get cluster info
kubectl cluster-info

# List all pods
kubectl get pods --all-namespaces

# Describe a specific pod
kubectl describe pod <pod-name> -n <namespace>

# Apply configuration
kubectl apply -f deployment.yaml

# Scale a deployment
kubectl scale deployment myapp --replicas=3

# Port forward for local testing
kubectl port-forward service/myapp 8080:80" 
   description="Essential Kubernetes commands for cluster management and troubleshooting." %}

## Infrastructure as Code

### Terraform Commands

{% include command-block.html 
   id="terraform-workflow" 
   title="Terraform Complete Workflow" 
   command="# Initialize Terraform
terraform init

# Plan changes
terraform plan -out=tfplan

# Apply changes
terraform apply tfplan

# Show current state
terraform show

# Destroy infrastructure
terraform destroy" 
   description="Standard Terraform workflow for infrastructure management." %}

### Advanced Terraform Operations

{% include command-block.html 
   id="terraform-advanced" 
   title="Advanced Terraform Operations" 
   expandable=true
   command="# Import existing resource
terraform import aws_instance.example i-1234567890abcdef0

# Taint a resource for recreation
terraform taint aws_instance.example

# Refresh state
terraform refresh

# Validate configuration
terraform validate

# Format configuration files
terraform fmt -recursive

# Show dependency graph
terraform graph | dot -Tsvg > graph.svg" 
   description="Advanced Terraform operations for managing complex infrastructure and troubleshooting." %}

## Monitoring & Observability

{% include command-block.html 
   id="monitoring-stack" 
   title="Deploy Monitoring Stack" 
   expandable=true
   command="# Deploy Prometheus with Helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack

# Deploy Grafana
helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana

# Get Grafana admin password
kubectl get secret --namespace default grafana -o jsonpath='{.data.admin-password}' | base64 --decode

# Port forward to access Grafana
kubectl port-forward service/grafana 3000:80" 
   description="Deploy a complete monitoring stack with Prometheus and Grafana using Helm charts." %}

## CI/CD Pipeline

{% include command-block.html 
   id="github-actions" 
   title="GitHub Actions Workflow" 
   expandable=true
   command="# Create .github/workflows/ci.yml
mkdir -p .github/workflows

# Run GitHub CLI to create workflow
gh workflow create

# List all workflows
gh workflow list

# View workflow runs
gh run list

# Manually trigger workflow
gh workflow run ci.yml" 
   description="Manage GitHub Actions workflows using the GitHub CLI tool." %}

---

## Features

- 🔄 **One-Click Copy** - Copy any command with a single click
- 📚 **Expandable Sections** - Hide complex commands until needed  
- 🌙 **Dark Mode Support** - Automatic dark/light theme switching
- 📱 **Mobile Responsive** - Works perfectly on all devices
- 🚀 **Fast Loading** - Optimized for quick access to commands

## Navigation

- [Commands Library](/commands/) - Browse all available commands
- [About](/about/) - Learn more about this project

---

*Last updated: {{ site.time | date: '%B %d, %Y' }}*
