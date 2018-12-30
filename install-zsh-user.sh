#!/bin/sh
cp -r /root/.oh-my-zsh /home/$1
cp -r /root/.zshrc     /home/$1

chown -R $1:$1 /home/$1/.oh-my-zsh
chown -R $1:$1 /home/$1/.zshrc