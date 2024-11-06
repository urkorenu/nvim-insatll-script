#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install required packages
echo "Installing required packages..."
sudo apt-get update
sudo apt-get install -y fuse nodejs npm clang ripgrep python3-pip zsh

# Set up Neovim configuration
echo "Setting up Neovim configuration..."
mkdir -p ~/.config
cp -r nvim ~/.config/

# Download and install Neovim
echo "Downloading and installing Neovim..."
cd ~/Downloads
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim

# Add Neovim to PATH if not already present
if ! grep -q '/opt/nvim' ~/.bashrc; then
  echo 'export PATH="$PATH:/opt/nvim"' >> ~/.bashrc
  # Source the .bashrc file to update the PATH in the current shell
  source ~/.bashrc
fi

# Install packer.nvim for Neovim plugin management
echo "Installing packer.nvim for Neovim..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Use full path to Neovim to avoid PATH issues
echo "Opening Neovim configuration file..."
/opt/nvim/nvim ~/.config/nvim/lua/my_config/packer.lua

