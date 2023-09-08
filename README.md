<h1 align="center">⚫⚫⚫dotfiles⚫⚫⚫</h1>

![laptop setup](https://i.imgur.com/LLU81Jl.png)
Wallpaper based on [Low Poly Wolf by zelda-Freak91](https://zelda-freak91.deviantart.com/art/Low-Poly-Art-Wolf-537626838)


## How to use it

0. Setup git identity. Create a file `$HOME/.gitconfig` with the following content. (this cannot not be part of the dotfiles, otherwise pulling changes is cumbersome)
    ```
    [user]
        email = EMAIL
        name = NAME
    ```

1. Clone this repo:

    ```shell
    git clone --recursive https://github.com/gruberma/dotfiles.git $HOME/.dotfiles
    cd $HOME/.dotfiles
    ```
2. Install GNU Stow:

    ```shell
    # On Arch Linux
    sudo pacman -S stow
    ```
3. Uncomment the lines in [`install.sh`](./install.sh) of dotfiles you want to install
4. Execute `./install.sh`.
    Make sure that you run the script in the main dotfiles directory.
    I.e change directory to `.dotfiles` first.

## Updating
To update the dotfiles pull this repo including its submodules.

```
git pull --recurse-submodules
```

## Installing dependencies

```shell
./ubuntu_deps_install.sh
```


## Install on Windows

vimrc location: `~\AppData\Local\nvim\init.vim`
