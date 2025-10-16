#!/bin/bash
set -e

# Stop the running container (if any)
container_id=`docker ps | awk -F " " '{print $1}'`
if [ -n "$container_id" ]; then
  echo "Stopping and removing container: $container_id"
  docker rm -f "$container_id"
else
  echo "No running containers to stop."
fi
