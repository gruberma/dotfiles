#!/usr/bin/env bash

sudo apt-get install -y \
    alacritty \
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
