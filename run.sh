#! /usr/bin/env bash

export LANG="C.UTF-8"
TERM="xterm-color"

. ~/.bashrc

apt update && \
  apt full-upgrade -y && \
  apt install tzdata tmux cmake less tree fzf git curl htop vim build-essential python3 python3-venv -y

prompt_emojis=(⛽ 🚚 🚍 🚕 ⛵ 🚂 🚁 🚜 🐴 🐑 🐫 🐮 ⏰ 🔨 🚀 🚲 💊 🔫 🍄 🌴 🐐 🐓 ☕ 🏈 💉 🍍)
emoji=${prompt_emojis[$(($RANDOM % ${#prompt_emojis[@]}))]}
PS1='\[\033[01;33m\]\w $emoji \[\033[00m\]'
