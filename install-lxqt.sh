#!/bin/bash

sudo apt update && \
sudo apt full-upgrade -y && \
sudo apt install lxqt-core lightdm git tmux neovim wget make python3 python3-pip podman -y

curl -fsS https://dl.brave.com/install.sh | sh
