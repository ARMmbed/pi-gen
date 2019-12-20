#!/bin/bash -e

# Auto login
cp files/serial-getty@.service "${ROOTFS_DIR}/lib/systemd/system/"
# Install application
cp app/* "${ROOTFS_DIR}/opt/app"
chmod +x "${ROOTFS_DIR}/opt/app"
# Start application
echo "/opt/app" >> "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.bashrc"
