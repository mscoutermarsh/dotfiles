#!/bin/sh

nvim_config_file=~/.config/nvim

mkdir -p ~/.config/

if [ ! -L "$nvim_config_file" ]; then
  echo "No nvim config found. Symlinking to dotfiles"
  ln -s ~/.dotfiles/vim/vim.symlink "$nvim_config_file"
fi
