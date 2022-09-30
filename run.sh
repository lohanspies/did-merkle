#!/bin/bash

# Simple script to build Docker Images and run the did-merkle environment

# Step 1 - Build docker images
docker build . -t did-merkle

# Step 2 - Run did-merkle Docker Image
docker container run -it --rm -p 8888:8888 -v "$(pwd)"/notebooks:/home/jovyan/notebooks did-merkle

