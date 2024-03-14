# vim-config

## Installation

- Clone the repository to your home directory:

```bash
git clone https://github.com/dancaldera/vim-config.git ~/.vim
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
