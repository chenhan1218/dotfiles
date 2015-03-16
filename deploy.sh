#!/usr/bin/env bash
ln -sf ~/dotfiles/bashrc ~/.bashrc
ln -sf ~/dotfiles/.gitconfig ~
ln -sf ~/dotfiles/.gitignore ~
git clone https://github.com/swem/tmux-config
ln -sf ~/tmux-config/.tmux.conf ~

