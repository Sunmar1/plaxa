#!/bin/bash

# Update package lists and upgrade installed packages
sudo apt update && sudo apt upgrade -y

# Install essential build tools and dependencies
sudo apt install build-essential pkg-config libssl-dev git-all -y

# Install Protocol Buffers compiler
sudo apt install -y protobuf-compiler

# Install Cargo (Rust package manager) with auto-yes
yes | sudo apt install cargo

# Install Rust using rustup, auto-select option 1 with -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Source the Cargo environment (no prompt, yes | removed)
source $HOME/.cargo/env

# Add Cargo bin to PATH in .bashrc (no prompt, yes | removed)
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

# Reload .bashrc to apply changes (no prompt, yes | removed)
source ~/.bashrc

# Update Rust to the latest version
rustup update

# Remove protobuf-compiler
sudo apt remove -y protobuf-compiler

# Download Protocol Buffers v25.2
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip

# Install unzip
sudo apt install unzip

# Unzip protoc to ~/.local
unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local

# Add protoc to PATH (no prompt, yes | removed)
export PATH="$HOME/.local/bin:$PATH"

# Check protoc version
protoc --version

# Install unzip again
sudo apt install unzip -y

# Remove protobuf-compiler again
sudo apt remove -y protobuf-compiler

# Download Protocol Buffers v25.2 again
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip

# Unzip protoc to ~/.local again
unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local

# Add protoc to PATH again (no prompt, yes | removed)
export PATH="$HOME/.local/bin:$PATH"

# Check protoc version again
protoc --version

# Install Nexus CLI, auto-select option 1 by piping "1"
echo "1" | curl https://cli.nexus.xyz/ | sh
