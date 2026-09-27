#!/bin/bash

sudo apt update
sudo apt full-upgrade -y
sudo apt install -y \
	lxqt-core \
	lightdm \
	lightdm-gtk-greeter-settings \
	fonts-noto-color-emoji \
	git \
	tmux \
	neovim \
	micro \
	wget \
	make \
	python3 \
	python3-pip \
	podman

curl -fsS https://dl.brave.com/install.sh | sh
