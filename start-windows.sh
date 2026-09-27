#!/bin/bash

cd /workspaces/PC-Free

if docker ps --format '{{.Names}}' | grep -qx 'windows'; then
    echo "Windows VM is already running."
else
    echo "Starting Windows VM..."
    docker compose -f windows10.yml up -d
fi

echo "Windows VM startup check complete."
