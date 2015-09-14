#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ln -sf $DIR/bashrc ~/.bashrc
ln -sf $DIR/pam_environment ~/.pam_environment
ln -sf $DIR/.gitconfig ~
ln -sf $DIR/.gitignore ~
ln -sf $DIR/bazaar ~/.bazaar
ln -sf $DIR/gdbinit ~/.gdbinit
ln -sf $DIR/tmux.conf ~/.tmux.conf
git clone https://github.com/swem/tmux-config && ln -sf ~/tmux-config/.tmux.conf ~/.tmux.conf
ln -sf $DIR/vimrc ~/.vimrc
git clone https://github.com/swem/vimrc ~/.vim && ln -sf ~/.vim/vimrc ~/.vimrc

