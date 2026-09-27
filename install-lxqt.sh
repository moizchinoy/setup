#!/bin/bash

# Exit immediately if any command fails
set -e

echo "Updating system packages..."
sudo apt update

echo "Upgrading system..."
sudo apt full-upgrade -y

echo "Installing packages..."
sudo apt install -y \
	lxqt-core \
	lightdm \
	lightdm-gtk-greeter-settings \
	light-locker \
	fonts-noto-color-emoji \
	git \
	tmux \
	neovim \
	micro \
	wget \
	curl \
	make \
	python3 \
	python3-pip \
	podman \
	ncal \
	htop

echo "Installing Brave"
curl -fsS https://dl.brave.com/install.sh | sh

echo "Cleaning apt cache..."
sudo apt clean

echo "All done!"
