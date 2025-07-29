---
layout: page
title: Commands Library
permalink: /commands/
---

# Commands Library

Browse our comprehensive collection of DevOps commands organized by category.

## Categories

- [🐳 Docker](#docker)
- [☸️ Kubernetes](#kubernetes)
- [🏗️ Terraform](#terraform)
- [📊 Monitoring](#monitoring)
- [🔧 Git & Version Control](#git--version-control)
- [🚀 CI/CD](#cicd)

---

## Docker

### Container Operations

{% include command-block.html 
   id="docker-ps" 
   title="List Running Containers" 
   command="docker ps" 
   description="Show all currently running containers." %}

{% include command-block.html 
   id="docker-images" 
   title="List Docker Images" 
   command="docker images" 
   description="Display all locally stored Docker images." %}

{% include command-block.html 
   id="docker-system-prune" 
   title="Clean Up Docker System" 
   expandable=true
   command="# Remove all stopped containers, unused networks, and dangling images
docker system prune

# Remove everything including unused images
docker system prune -a

# Remove specific types
docker container prune
docker image prune
docker network prune
docker volume prune" 
   description="Clean up Docker system resources to free up disk space." %}

---

## Kubernetes

### Cluster Information

{% include command-block.html 
   id="k8s-nodes" 
   title="View Cluster Nodes" 
   command="kubectl get nodes -o wide" 
   description="Display all nodes in the cluster with detailed information." %}

### Pod Management

{% include command-block.html 
   id="k8s-pod-troubleshoot" 
   title="Pod Troubleshooting" 
   expandable=true
   command="# Get pod details
kubectl get pod <pod-name> -o yaml

# Check pod events
kubectl get events --field-selector involvedObject.name=<pod-name>

# Execute command in pod
kubectl exec -it <pod-name> -- /bin/bash

# Copy files to/from pod
kubectl cp <local-file> <pod-name>:<remote-file>
kubectl cp <pod-name>:<remote-file> <local-file>" 
   description="Common troubleshooting commands for Kubernetes pods." %}

---

## Terraform

### State Management

{% include command-block.html 
   id="terraform-state" 
   title="Terraform State Operations" 
   expandable=true
   command="# List resources in state
terraform state list

# Show specific resource
terraform state show <resource-name>

# Remove resource from state
terraform state rm <resource-name>

# Move resource in state
terraform state mv <old-name> <new-name>

# Pull remote state
terraform state pull > terraform.tfstate.backup" 
   description="Manage Terraform state file operations." %}

---

## Monitoring

### System Monitoring

{% include command-block.html 
   id="system-monitoring" 
   title="System Resource Monitoring" 
   expandable=true
   command="# CPU and memory usage
top
htop

# Disk usage
df -h
du -sh /*

# Network connections
netstat -tulpn
ss -tulpn

# Process tree
pstree

# System logs
journalctl -f
tail -f /var/log/syslog" 
   description="Monitor system resources and performance." %}

---

## Git & Version Control

### Branch Management

{% include command-block.html 
   id="git-branches" 
   title="Git Branch Operations" 
   expandable=true
   command="# List all branches
git branch -a

# Create and switch to new branch
git checkout -b feature/new-feature

# Switch between branches
git switch main
git switch feature/new-feature

# Merge branch
git checkout main
git merge feature/new-feature

# Delete branch
git branch -d feature/new-feature
git push origin --delete feature/new-feature" 
   description="Complete guide to Git branch management." %}

---

## CI/CD

### GitHub Actions

{% include command-block.html 
   id="gh-actions-debug" 
   title="GitHub Actions Debugging" 
   expandable=true
   command="# View workflow runs
gh run list --workflow=ci.yml

# View specific run details
gh run view <run-id>

# Download run logs
gh run download <run-id>

# Re-run failed jobs
gh run rerun <run-id>

# Cancel running workflow
gh run cancel <run-id>" 
   description="Debug and manage GitHub Actions workflows." %}

---

## Quick Reference

### Most Used Commands

{% include command-block.html 
   id="quick-ref" 
   title="Daily DevOps Commands" 
   expandable=true
   command="# Docker
docker ps
docker logs <container>
docker exec -it <container> bash

# Kubernetes  
kubectl get pods
kubectl logs <pod>
kubectl describe pod <pod>

# Git
git status
git add .
git commit -m 'message'
git push

# System
ps aux | grep <process>
tail -f <logfile>
grep -r 'pattern' ." 
   description="Most frequently used commands in daily DevOps work." %}

---

*Need a command added? [Create an issue](https://github.com/your-repo/issues) or contribute to the project!*