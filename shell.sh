#!/bin/bash

# Define the list of services and their images
declare -a services=(
    "mongo:4.4"
    "free5gc/nrf:v4.0.0"
    "free5gc/amf:V4.0.0"
    "free5gc/ausf:v4.0.0"
    "free5gc/nssf:v4.0.0"
    "free5gc/pcf:v4.0.0"
    "free5gc/smf:v4.0.0"
    "free5gc/udm:v4.0.0"
    "free5gc/udr:v4.0.0"
    "free5gc/chf:v4.0.0"
    "free5gc/nef:latest"
    "free5gc/webui:v4.0.0"
    "free5gc/upf:latest"
    "free5gc/ueransim:latest"
    "ubuntu:20.04"
)

# Pull each image
for image in "${services[@]}"; do
    echo "Pulling image: $image"
    docker pull $image
    if [ $? -ne 0 ]; then
        echo "Failed to pull image: $image"
        exit 1
    else
        echo "Successfully pulled image: $image"
    fi
done

echo "All images have been pulled successfully."
