# Dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure Git and GNU Stow are installed in the system:

```shell
sudo dnf install git stow
```

## Installation
1. Clone the dotfiles repository inside `$HOME/.config` directory:
```shell
  git clone git@github.com/obsilva/dotfiles.git $HOME/.config
```

2. Configure GNU Stow to also work from `$HOME`. Without this, you have to be inside the `dotfiles` directory or provide additional input parameters to Stow:
```shell
  ln -s $HOME/.config/dotfiles/.stowrc $HOME
```

3. From `$HOME` or  `dotfiles` dir, Stow the applications you want to configure:
```shell
  stow profile
  stow nvim
  stow zsh
  ...
```
