#!/bin/bash
docker compose down
docker rmi birdproxy:latest
docker-compose up -d --build
