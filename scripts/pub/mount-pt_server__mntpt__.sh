#!/bin/bash

SERVER_IP="192.168.178.68"
SHARE_NAME="p"
MOUNT_POINT="/mnt/pt_server"
CREDENTIALS_FILE="/home/naturalhacks/.pt_server_credentials"

# Create mount point if it doesn't exist
[ ! -d "$MOUNT_POINT" ] && sudo mkdir -p "$MOUNT_POINT"

# Mount the share
sudo mount -t cifs "//${SERVER_IP}/${SHARE_NAME}" "$MOUNT_POINT" -o credentials="${CREDENTIALS_FILE}",uid=$(id -u),gid=$(id -g),iocharset=utf8

# Check if mounted successfully
if mountpoint -q "$MOUNT_POINT"; then
    echo "Share mounted at $MOUNT_POINT"
else
    echo "Failed to mount the share"
fi

