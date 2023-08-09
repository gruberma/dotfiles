#!/usr/bin/env bash

sudo apt-get install -y \
    neovim \
    python3-pip \
    exa \
    exuberant-ctags \
    fzf \
    ripgrep \
    fd-find \
    bat \
    pipx

pipx install ranger-fm
pipx install python-language-server
pipx install pynvim
pipx install virtualenv
