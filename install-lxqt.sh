#!/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
	lxqt-core \
	lightdm \
	git \
	tmux \
	neovim \
	wget \
	make \
	python3 \
	python3-pip \
	podman

curl -fsS https://dl.brave.com/install.sh | sh
