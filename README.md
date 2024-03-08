# vim-config

This project enables the possibility to use the same vim configuration on different machines.

## Prerequisites

1. Install bun: 1.0.30 or later
2. Install vim: 7.4 or later
3. Install git: 1.7.10 or later

## Installation

- Clone the repository to your home directory:

```bash
git clone <repository-url> ~/.vim
```

- Create a symbolic link to the vimrc file:

```bash
ln -s ~/.vim/vimrc ~/.vimrc
```

- Install the plugins:

To handle this I use the VimPlug plugin. To install the plugins, open vim and run the following command:
To intall the VimPlug Plugin Manager [vim-plug](https://github.com/junegunn/vim-plug), run the following command:

For Unix Systems:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```vim
:PlugInstall
```
