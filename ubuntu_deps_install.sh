#!/usr/bin/env bash

sudo apt-get install -y \
    alacritty \
    autokey-gtk \
    bat \
    curl \
    exuberant-ctags \
    eza \
    fd-find \
    fzf \
    neovim \
    numlockx \
    pipx \
    python3-pip \
    ripgrep \
    stow \
    tmux \
    tmuxinator \
    xdotool \
    zathura \
    zsh

pipx install ranger-fm
pipx install python-language-server
pipx install pynvim
pipx install virtualenv
pipx install ipython
pipx install visidata --include-deps
pipx inject visidata pyyaml lxml
