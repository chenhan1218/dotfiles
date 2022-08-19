#!/usr/bin/env bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ln -s $DIR/bin ~/bin
ln -s $DIR/bashrc ~/.bashrc
ln -s $DIR/.zshrc ~/.zshrc
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
ln -s $DIR/pam_environment ~/.pam_environment
ln -s $DIR/.gitconfig ~
ln -s $DIR/.gitignore ~
ln -s $DIR/.profile ~
ln -s $DIR/.editorconfig ~
ln -s $DIR/bazaar ~/.bazaar
ln -s $DIR/devscripts ~/.devscripts
ln -s $DIR/gdbinit ~/.gdbinit
ln -s $DIR/pbuilderrc ~/.pbuilderrc
ln -s $DIR/quiltrc-dpkg ~/.quiltrc-dpkg
ln -s $DIR/tmux.conf ~/.tmux.conf
git clone https://github.com/chenhan1218/tmux-config ~/.tmux \
    && ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf \
    && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $DIR/vimrc ~/.vimrc
git clone https://github.com/chenhan1218/vimrc ~/.vim && ln -sf ~/.vim/vimrc ~/.vimrc

