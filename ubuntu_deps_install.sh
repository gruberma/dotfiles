#!/usr/bin/env bash

sudo apt-get install -y \
    autokey-gtk \
    curl \
    tmux \
    tmuxinator \
    stow \
    neovim \
    python3-pip \
    eza \
    exuberant-ctags \
    fzf \
    ripgrep \
    fd-find \
    bat \
    pipx \
    zsh

pipx install ranger-fm
pipx install python-language-server
pipx install pynvim
pipx install virtualenv
