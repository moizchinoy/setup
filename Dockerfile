FROM ubuntu:latest

ENV LANG=C.UTF-8

RUN apt-get update && apt-get full-upgrade -y 

RUN apt-get install unminimize -y && yes | unminimize

RUN apt-get install tzdata tmux cmake tldr cht.sh stow less tree fzf git wget curl htop vim build-essential python3 python3-venv -y

ENV TZ=Australia/Sydney
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root
COPY dotfiles .

RUN mkdir -p ./.local/share
RUN tldr --update
