#!/bin/bash
set -e

# Stop the running container (if any)
containerid = `docker ps |awk -F " "  '{print $1}' `
if[$containerid==null];then
  echo "okk"
else
  docker stop $containerid
fi
