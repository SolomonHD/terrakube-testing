---
layout: page
title: Docker Compose Commands
category: docker
tags: [docker, containers, orchestration]
---

# Docker Compose Commands

Docker Compose is a tool for defining and running multi-container Docker applications.

## Basic Operations

{% include command-block.html 
   id="compose-up" 
   title="Start Services" 
   command="docker-compose up -d" 
   description="Start all services defined in docker-compose.yml in detached mode." %}

{% include command-block.html 
   id="compose-down" 
   title="Stop Services" 
   command="docker-compose down" 
   description="Stop and remove containers, networks, and volumes." %}

## Advanced Operations

{% include command-block.html 
   id="compose-advanced" 
   title="Advanced Docker Compose Operations" 
   expandable=true
   command="# Build and start services
docker-compose up --build

# Scale specific service
docker-compose up --scale web=3

# View service logs
docker-compose logs -f web

# Execute command in running service
docker-compose exec web bash

# Pull latest images
docker-compose pull

# Restart specific service
docker-compose restart web" 
   description="Advanced Docker Compose operations for complex scenarios." %}