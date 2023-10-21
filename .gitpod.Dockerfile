# Use a base image with Gitpod's workspace image
FROM gitpod/workspace-full

# Set environment variables to enable Podman to run in rootless mode
ENV USER=gitpod
ENV HOME=/workspace

# Install Podman
RUN sudo apt update && \
    sudo apt install -y podman && \
    sudo apt clean
