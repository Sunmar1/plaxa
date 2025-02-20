#!/bin/bash

# Update package lists and upgrade installed packages
sudo apt update && sudo apt upgrade -y

# Install essential build tools and dependencies
sudo apt install build-essential pkg-config libssl-dev git-all -y

# Install Protocol Buffers compiler
sudo apt install -y protobuf-compiler

# Install Cargo (Rust package manager) with yes pipe
yes | sudo apt install cargo

# Install Rust using rustup with yes pipe
yes | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Source the Cargo environment with yes pipe
yes | source $HOME/.cargo/env

# Add Cargo bin to PATH in .bashrc with yes pipe
yes | echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

# Reload .bashrc to apply changes with yes pipe
yes | source ~/.bashrc

# Update Rust to the latest version with yes pipe
yes | rustup update

# Remove protobuf-compiler with yes pipe
yes | sudo apt remove -y protobuf-compiler

# Download Protocol Buffers v25.2 with yes pipe
yes | curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip

# Install unzip with yes pipe
yes | sudo apt install unzip

# Unzip protoc to ~/.local with yes pipe
yes | unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local

# Add protoc to PATH with yes pipe
yes | export PATH="$HOME/.local/bin:$PATH"

# Check protoc version with yes pipe
yes | protoc --version

# Install unzip again with yes pipe
yes | sudo apt install unzip -y

# Remove protobuf-compiler again with yes pipe
yes | sudo apt remove -y protobuf-compiler

# Download Protocol Buffers v25.2 again with yes pipe
yes | curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip

# Unzip protoc to ~/.local again with yes pipe
yes | unzip protoc-25.2-linux-x86_64.zip -d $HOME/.local

# Add protoc to PATH again with yes pipe
yes | export PATH="$HOME/.local/bin:$PATH"

# Check protoc version again with yes pipe
yes | protoc --version

# Install Nexus CLI with yes pipe
yes | curl https://cli.nexus.xyz/ | sh
