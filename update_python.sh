#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install prerequisites
echo "Installing prerequisites..."
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# Install pyenv
echo "Installing pyenv..."
curl https://pyenv.run | bash

# Add pyenv to bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Restart shell
exec $SHELL

# Install Python
echo "Installing Python..."
pyenv install 3.9.7

# Set default Python version
echo "Setting default Python version..."
pyenv global 3.9.7

echo "Python update complete."

