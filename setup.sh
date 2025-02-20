#!/bin/bash

# Update package lists and upgrade installed packages
yes | sudo apt update && sudo apt upgrade -y

# Install essential build tools and dependencies
yes | sudo apt install build-essential pkg-config libssl-dev git-all -y

# Install Protocol Buffers compiler
yes | sudo apt install -y protobuf-compiler

# Skip system Cargo install to avoid conflicts
# yes | sudo apt install cargo  # Removed

# Install Rust using rustup (fully automated)
yes | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Source the Cargo environment
yes | source $HOME/.cargo/env

# Add Cargo bin to PATH in .bashrc
yes | echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

# Reload .bashrc to apply changes
yes | source ~/.bashrc

# Update Rust to the latest version
yes | rustup update

# Verify Cargo version
cargo --version

# Rest of your script...
yes | sudo apt remove -y protobuf-compiler
yes | curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v25.2/protoc-25.2-linux-x86_64.zip
yes | sudo apt install unzip
# ... (continue with your original commands)
