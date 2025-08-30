FROM ubuntu:latest

WORKDIR /root

ENV LANG=C.UTF-8

RUN apt-get update && \
    apt-get full-upgrade -y && \
    apt-get install tzdata tmux cmake less tree fzf git curl htop vim build-essential python3 python3-venv -y

ENV TZ=Australia/Sydney
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "prompt_emojis=(⛽ 🚚 🚍 🚕 ⛵ 🚂 🚁 🚜 🐴 🐑 🐫 🐮 ⏰ 🔨 🚀 🚲 💊 🔫 🍄 🌴 🐐 🐓 ☕ 🏈 💉 🍍)" >> ~/.bashrc && \
    echo 'emoji=${prompt_emojis[$(($RANDOM % ${#prompt_emojis[@]}))]}' >> ~/.bashrc && \
    echo "PS1='\w \$emoji '" >> .bashrc

# echo "PS1='\[\033[01;33m\]\w \$emoji \[\033[00m\]'" >> ~/.bashrc
