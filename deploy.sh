#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ln -s $DIR/bashrc ~/.bashrc
ln -s $DIR/pam_environment ~/.pam_environment
ln -s $DIR/.gitconfig ~
ln -s $DIR/.gitignore ~
ln -s $DIR/bazaar ~/.bazaar
ln -s $DIR/devscripts ~/.devscripts
ln -s $DIR/gdbinit ~/.gdbinit
ln -s $DIR/pbuilderrc ~/.pbuilderrc
ln -s $DIR/tmux.conf ~/.tmux.conf
git clone https://github.com/swem/tmux-config ~/tmux-config && ln -sf ~/tmux-config/.tmux.conf ~/.tmux.conf
ln -s $DIR/vimrc ~/.vimrc
git clone https://github.com/swem/vimrc ~/.vim && ln -sf ~/.vim/vimrc ~/.vimrc

